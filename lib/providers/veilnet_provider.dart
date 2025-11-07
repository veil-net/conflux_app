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
import 'package:dio/dio.dart';
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
    _executable = File('${tempDir.path}/veilnet-conflux.exe');
    _initialized = true;
    return this;
  }

  Future<void> up(String anchorToken) async {
    if (!_initialized) {
      throw Exception('Veilnet is not initialized');
    }
    await Process.start(_executable.path, ['start']);
    final arguments = ['up', '-t', anchorToken.toString()];
    final process = await Process.start(_executable.path, arguments);
    exitCode = await process.exitCode;
    if (exitCode != 0) {
      final stderr = await process.stderr.transform(utf8.decoder).join();
      throw Exception(stderr);
    }
  }

  Future<void> down() async {
    if (!_initialized) {
      throw Exception('Veilnet is not initialized');
    }
    final process = await Process.start(_executable.path, ['stop']);
    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      final stderr = await process.stderr.transform(utf8.decoder).join();
      throw Exception(stderr);
    }
  }
}

enum VeilNetState { connected, disconnected, connecting, disconnecting, error }

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

  Future<int?> getMetrics(String name) async {
    switch (Platform.operatingSystem) {
      case "windows":
        final dio = Dio();
        final response = await dio.get('http://localhost:1993/metrics/$name');
        return response.data['metrics'];
      case "android":
        try {
          final metrics = await _vpnChannel.invokeMethod<int>('metrics', {
            "name": name,
          });
          return metrics;
        } on Exception {
          return null;
        }
      default:
        return null;
    }
  }

  Future<int?> numTethers() async {
    return await getMetrics('num_tethers');
  }

  Future<int?> numStreams() async {
    return await getMetrics('num_streams');
  }

  Future<int?> numRoutes() async {
    return await getMetrics('num_routes');
  }

  Future<int?> numRelays() async {
    return await getMetrics('num_relays');
  }

  Future<int?> numIngressers() async {
    return await getMetrics('num_ingressers');
  }

  Future<int?> numEgressers() async {
    return await getMetrics('num_egressers');
  }

  ConfluxDetails? get confluxDetails => _confluxDetails;
}
