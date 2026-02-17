import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:conflux/models/conflux.dart';
import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/device_info_provider.dart';
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
        final binary = await rootBundle.load(
          'assets/bin/windows/conflux-windows-amd64.exe',
        );
        _executable = File('${tempDir.path}/veilnet-conflux.exe');
        _executable.writeAsBytesSync(binary.buffer.asUint8List());
        _initialized = true;
        log('Initialized Veilnet Conflux for Windows');
        break;
      case "linux":
        final binary = await rootBundle.load(
          'assets/bin/linux/conflux-linux-amd64',
        );
        _executable = File('${tempDir.path}/veilnet-conflux');
        _executable.writeAsBytesSync(binary.buffer.asUint8List());
        // Set execute permissions on Linux
        await Process.run('chmod', ['+x', _executable.path]);
        _initialized = true;
        log('Initialized Veilnet Conflux for Linux');
        break;
      case "macos":
        final binary = await rootBundle.load(
          'assets/bin/macos/conflux-darwin-arm64',
        );
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
      final escapedArgs = arguments
          .map((arg) => arg.replaceAll("'", "'\\''"))
          .join(' ');
      final command = "'$escapedPath' $escapedArgs";

      final appleScript =
          'do shell script "$command" with administrator privileges';
      final process = await Process.run('osascript', ['-e', appleScript]);

      if (process.exitCode != 0) {
        final errorMessage = process.stderr.toString().trim();
        throw Exception(
          errorMessage.isNotEmpty
              ? errorMessage
              : 'Process failed with exit code ${process.exitCode}',
        );
      }
    } else {
      // For other platforms, run normally
      final process = await Process.run(_executable.path, arguments);
      final stderr = process.stderr.toString().trim();
      final exitCode = process.exitCode;

      if (exitCode != 0) {
        throw Exception(
          stderr.isNotEmpty
              ? stderr.trim()
              : 'Process failed with exit code $exitCode',
        );
      }
    }
  }

  Future<void> down() async {
    if (!_initialized) {
      throw Exception('Veilnet is not initialized');
    }

    final arguments = ['down'];
    if (Platform.isMacOS) {
      // On macOS, use osascript to run with sudo privileges
      final escapedPath = _executable.path.replaceAll("'", "'\\''");
      final escapedArgs = arguments
          .map((arg) => arg.replaceAll("'", "'\\''"))
          .join(' ');
      final command = "'$escapedPath' $escapedArgs";

      final appleScript =
          'do shell script "$command" with administrator privileges';
      final process = await Process.run('osascript', ['-e', appleScript]);

      if (process.exitCode != 0) {
        final errorMessage = process.stderr.toString().trim();
        throw Exception(
          errorMessage.isNotEmpty
              ? errorMessage
              : 'Process failed with exit code ${process.exitCode}',
        );
      }
    } else {
      // For other platforms, run normally
      final process = await Process.run(_executable.path, arguments);
      final stderr = process.stderr.toString().trim();
      final exitCode = process.exitCode;

      if (exitCode != 0) {
        throw Exception(
          stderr.isNotEmpty
              ? stderr.trim()
              : 'Process failed with exit code $exitCode',
        );
      }
    }
  }
}

@riverpod
class VeilNet extends _$VeilNet {

  @override
  Future<Conflux?> build() async {
    ref.keepAlive();

    final timer = Timer.periodic(const Duration(seconds: 1), (_) {
      ref.invalidateSelf();
    });
    ref.onDispose(() => timer.cancel());

    try {
      final id = await getID();
      if (id == null) {
        return null;
      }
      try {
        final conflux = await ref.watch(confluxByIDProvider(id!).future);
        return conflux;
      } catch (e) {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<String?> getID() async {
    switch (Platform.operatingSystem) {
      case "windows":
        return null;
      case "linux":
        return null;
      case "macos":
        return null;
      case "android":
        final id = await _vpnChannel.invokeMethod<String>('ID');
        return id;
      default:
        return null;
    }
  }

  Future<void> connect(Realm realm) async {
    if (state == AsyncValue.data(null)) {
      throw Exception('VeilNet is not disconnected');
    }

    final hostname = await ref.watch(deviceHostnameProvider.future);
    final api = ref.watch(apiProvider);
    final response = await api.post(
      '/conflux',
      data: {'realm_id': realm.id, 'tag': hostname},
    );
    final anchorToken = response.data['token'];
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

    ref.invalidateSelf();
  }

  Future<void> disconnect() async {
    if (state == AsyncValue.data(null)) {
      throw Exception('VeilNet is not connected');
    }

    switch (Platform.operatingSystem) {
      case "windows":
        await ref.read(confluxServiceProvider.notifier).down();
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
    ref.invalidateSelf();
  }
}
