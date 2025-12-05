import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conflux/models/conflux_details.dart';
import 'package:conflux/models/plane_details.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/conflux_details_provider.dart';
import 'package:conflux/providers/device_info_provider.dart';
import 'package:conflux/providers/preference_provider.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'veilnet_provider.g.dart';

final _vpnChannel = MethodChannel('veilnet/service');

@riverpod
class ConfluxService extends _$ConfluxService {
  bool _initialized = false;
  late File _executable;
  @override
  Future<ConfluxService> build() async {
    ref.keepAlive();
    final tempDir = await getTemporaryDirectory();
    switch (Platform.operatingSystem) {
      case "windows":
        final binary = await rootBundle.load('assets/bin/windows/veilnet-conflux.exe');
        _executable = File('${tempDir.path}/veilnet-conflux.exe');
        _executable.writeAsBytesSync(binary.buffer.asUint8List());
        _initialized = true;
        log('Initialized Veilnet Conflux for Windows');
        break;
      case "linux":
        final binary = await rootBundle.load('assets/bin/linux/veilnet-conflux');
        _executable = File('${tempDir.path}/veilnet-conflux');
        _executable.writeAsBytesSync(binary.buffer.asUint8List());
        // Set execute permissions on Linux
        await Process.run('chmod', ['+x', _executable.path]);
        _initialized = true;
        log('Initialized Veilnet Conflux for Linux');
        break;
      case "macos":
        final binary = await rootBundle.load('assets/bin/macos/veilnet-conflux');
        _executable = File('${tempDir.path}/veilnet-conflux');
        _executable.writeAsBytesSync(binary.buffer.asUint8List());
        // Set execute permissions on macOS
        await Process.run('chmod', ['+x', _executable.path]);
        _initialized = true;
        log('Initialized Veilnet Conflux for macOS');
        break;
      default:
        log('Unsupported platform: ${Platform.operatingSystem}');
        _initialized = false;
        break;
    }
    _initialized = true;
    return this;
  }

  Future<void> up(String anchorToken) async {
    if (!_initialized) {
      throw Exception('Veilnet is not initialized');
    }
    final arguments = ['up', '-t', anchorToken.toString()];
    
    if (Platform.isMacOS) {
      // On macOS, use osascript to run with sudo privileges
      // This will prompt the user for their password
      final escapedPath = _executable.path.replaceAll("'", "'\\''");
      final escapedArgs = arguments.map((arg) => arg.replaceAll("'", "'\\''")).join(' ');
      final command = "'$escapedPath' $escapedArgs";
      
      final appleScript = 'do shell script "$command" with administrator privileges';
      final process = await Process.run('osascript', ['-e', appleScript]);
      
      if (process.exitCode != 0) {
        final errorMessage = process.stderr.toString().trim();
        throw Exception(errorMessage.isNotEmpty 
            ? errorMessage 
            : 'Process failed with exit code ${process.exitCode}');
      }
    } else {
      // For other platforms, run normally
      final process = await Process.start(_executable.path, arguments);
      final stderrFuture = process.stderr.transform(utf8.decoder).join();
      final exitCode = await process.exitCode;
      
      if (exitCode != 0) {
        final stderr = await stderrFuture;
        throw Exception(stderr.isNotEmpty 
            ? stderr.trim() 
            : 'Process failed with exit code $exitCode');
      }
    }
  }

  Future<void> down() async {
    if (!_initialized) {
      throw Exception('Veilnet is not initialized');
    }
    
    if (Platform.isMacOS) {
      // On macOS, use osascript to run with sudo privileges
      final escapedPath = _executable.path.replaceAll("'", "'\\''");
      final command = "'$escapedPath' down";
      
      final appleScript = 'do shell script "$command" with administrator privileges';
      final process = await Process.run('osascript', ['-e', appleScript]);
      
      if (process.exitCode != 0) {
        final errorMessage = process.stderr.toString().trim();
        throw Exception(errorMessage.isNotEmpty 
            ? errorMessage 
            : 'Process failed with exit code ${process.exitCode}');
      }
    } else {
      // For other platforms, run normally
      final process = await Process.start(_executable.path, ['down']);
      final stderrFuture = process.stderr.transform(utf8.decoder).join();
      final exitCode = await process.exitCode;
      
      if (exitCode != 0) {
        final stderr = await stderrFuture;
        throw Exception(stderr.isNotEmpty 
            ? stderr.trim() 
            : 'Process failed with exit code $exitCode');
      }
    }
  }
}

enum VeilNetState {
  connected,
  disconnected,
  connecting,
  disconnecting,
  error,
  loading,
}

@riverpod
class VeilNet extends _$VeilNet {
  VeilNetState? _intentState;
  VeilNetState? _actualState;
  Timer? _timer;
  ConfluxDetails? _confluxDetails;
  @override
  VeilNetState build() {
    ref.keepAlive();
    final pref = ref.watch(preferenceProvider);
    pref.when(
      data: (pref) {
        // Read the conflux ID from the preferences
        final confluxID = pref.getString('conflux_id');
        // If the conflux ID is null, return the disconnected state
        if (confluxID == null) {
          _actualState = VeilNetState.disconnected;
          _confluxDetails = null;
        } else {
          // Read the conflux details from the database
          final confluxDetails = ref.watch(confluxDetailsProvider(confluxID));
          confluxDetails.when(
            data: (details) {
              _confluxDetails = details;
              // If the conflux details are null
              if (details == null) {
                switch (_intentState) {
                  // If the intent state is connected, return the connecting state
                  case VeilNetState.connected:
                    _actualState = VeilNetState.connecting;
                    if (_timer == null) {
                      setTimer();
                    }
                  // If the intent state is disconnected, return the disconnected state
                  case VeilNetState.disconnected:
                    _actualState = VeilNetState.disconnected;
                    _timer?.cancel();
                    _timer = null;
                  // If the intent state is anything else, return the disconnected state
                  default:
                    _actualState = VeilNetState.disconnected;
                    _timer?.cancel();
                    _timer = null;
                }
              } else {
                // If the conflux details are not null
                switch (_intentState) {
                  // If the intent state is connected
                  case VeilNetState.connected:
                    // If the conflux details have no signature or cidr, return the connecting state
                    if (details.signature == null || details.cidr == null) {
                      _actualState = VeilNetState.connecting;
                      if (_timer == null) {
                        setTimer();
                      }
                    } else {
                      // If the conflux details have a signature and cidr, return the connected state
                      _actualState = VeilNetState.connected;
                      _timer?.cancel();
                      _timer = null;
                    }
                  // If the intent state is disconnected, return disconnecting state
                  case VeilNetState.disconnected:
                    _actualState = VeilNetState.disconnecting;
                    if (_timer == null) {
                      setTimer();
                    }
                  // If the intent state is anything else, return the error state
                  default:
                    if (details.signature == null || details.cidr == null) {
                      _actualState = VeilNetState.connecting;
                      if (_timer == null) {
                        setTimer();
                      }
                    } else {
                      // If the conflux details have a signature and cidr, return the connected state
                      _actualState = VeilNetState.connected;
                      _timer?.cancel();
                      _timer = null;
                    }
                }
              }
            },
            error: (error, stackTrace) {
              // If there is an error for reading the conflux details, return the error state
              log('Error reading conflux details: $error');
              _actualState = VeilNetState.error;
              _confluxDetails = null;
            },
            loading: () {
              _confluxDetails = null;
              _actualState = VeilNetState.loading;
            },
          );
        }
      },
      error: (error, stackTrace) {
        // If there is an error for reading the preferences, return the error state
        log('Error reading preferences: $error');
        _actualState = VeilNetState.error;
        _confluxDetails = null;
      },
      loading: () {
        _confluxDetails = null;
        _actualState = VeilNetState.loading;
      },
    );
    // Return the current state, unless there is an error in which case return the error state
    return _actualState ?? VeilNetState.error;
  }

  Future<void> connect(PlaneDetails plane) async {
    if (state == VeilNetState.connecting ||
        state == VeilNetState.disconnecting) {
      throw Exception('Veilnet is busy');
    }

    if (state == VeilNetState.connected) {
      throw Exception('Veilnet is already connected');
    }

    try {
      _intentState = VeilNetState.connected;
      final hostname = await ref.watch(deviceHostnameProvider.future);
      final api = ref.watch(apiProvider);
      final response = await api.post(
        '/conflux',
        data: {'plane_id': plane.id, 'tag': hostname},
      );
      final anchorToken = response.data['token'];
      final confluxID = response.data['conflux_id'];
      switch (Platform.operatingSystem) {
        case "windows":
          await ref.read(confluxServiceProvider.notifier).up(anchorToken);
          break;
        case "linux":
          await ref.read(confluxServiceProvider.notifier).up(anchorToken);
          break;
        case "macos":
          await ref.read(confluxServiceProvider.notifier).up(anchorToken);
          break;
        case "android":
          final success = await _vpnChannel.invokeMethod<bool>('start', {
            "guardian": api.options.baseUrl,
            "token": anchorToken,
          });

          if (success != true) {
            throw Exception('Failed to start the VPN service');
          }
          break;
      }
      final pref = await ref.watch(preferenceProvider.future);
      await pref.setString('conflux_id', confluxID);
      ref.invalidateSelf();
    } on Exception {
      _intentState = VeilNetState.disconnected;
      rethrow;
    } finally {
      setTimer();
    }
  }

  Future<void> disconnect() async {
    if (state == VeilNetState.connecting ||
        state == VeilNetState.disconnecting) {
      throw Exception('Veilnet is busy');
    }

    if (state == VeilNetState.disconnected) {
      throw Exception('Veilnet is already disconnected');
    }

    try {
      _intentState = VeilNetState.disconnecting;
      switch (Platform.operatingSystem) {
        case "windows":
          ref.read(confluxServiceProvider.notifier).down();
          break;
        case "linux":
          await ref.read(confluxServiceProvider.notifier).down();
          break;
        case "macos":
          await ref.read(confluxServiceProvider.notifier).down();
          break;
        case "android":
          await _vpnChannel.invokeMethod<bool>('stop');
      }
      final pref = await ref.watch(preferenceProvider.future);
      await pref.remove('conflux_id');
      ref.invalidateSelf();
    } on Exception {
      _intentState = VeilNetState.disconnected;
      rethrow;
    } finally {
      setTimer();
    }
  }

  void setTimer() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 30), () async {
      final pref = await ref.watch(preferenceProvider.future);
      final confluxID = pref.getString('conflux_id');
      if (confluxID == null) {
        _intentState = VeilNetState.disconnected;
        state = VeilNetState.disconnected;
      } else {
        final confluxDetails = await ref.watch(
          confluxDetailsProvider(confluxID).future,
        );
        if (confluxDetails == null) {
          _intentState = VeilNetState.disconnected;
          state = VeilNetState.disconnected;
        } else {
          if (confluxDetails.signature == null || confluxDetails.cidr == null) {
            await pref.remove('conflux_id');
            _intentState = VeilNetState.disconnected;
            state = VeilNetState.disconnected;
          } else {
            _intentState = VeilNetState.connected;
            state = VeilNetState.connected;
          }
        }
      }
    });
  }

  ConfluxDetails? get confluxDetails => _confluxDetails;
}
