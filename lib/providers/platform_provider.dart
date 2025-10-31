import 'dart:developer';

import 'package:conflux/providers/preference_provider.dart';
import 'package:conflux/providers/current_session_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'platform_provider.g.dart';

@riverpod
class Platform extends _$Platform {
  @override
  Future<String> build() async {
    ref.keepAlive();
    final prefs = await ref.watch(preferenceProvider.future);
    try {
      final platform = prefs.getString('platform');
      if (platform == null) {
        await prefs.setString('platform', 'windows');
        log('Platform is not set, setting to windows');
        return 'windows';
      } else {
        log('Platform loaded from prefs: $platform');
        return platform;
      }
    } catch (e) {
      log('Error loading platform from prefs: $e');
      await prefs.setString('platform', 'windows');
      return 'windows';
    }
  }

  Future<void> setPlatform(String dst) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setString('platform', dst);
    ref.invalidateSelf();
  }

  Future<void> continueToApp() async {
    final session = ref.watch(currentSessionProvider);
    switch (state.value) {
      case 'windows':
        final dio = Dio();
        await dio.get(
          'http://localhost:3000/auth/callback?refresh_token=${session?.refreshToken}',
        );
        break;
      case 'linux':
        final dio = Dio();
        await dio.get(
          'http://localhost:3000/auth/callback?refresh_token=${session?.refreshToken}',
        );
        break;
      case 'android':
        launchUrl(Uri.parse('veilnet://auth/callback'));
        break;
      default:
        throw Exception('Invalid platform');
    }
  }
}
