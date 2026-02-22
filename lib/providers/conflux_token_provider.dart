import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:conflux/providers/secure_store_provider.dart';

part 'conflux_token_provider.g.dart';

@riverpod
class ConfluxToken extends _$ConfluxToken {
  @override
  Future<String?> build() async {
    ref.keepAlive();
    final secureStorage = ref.watch(secureStorageProvider);
    final token = await secureStorage.read(key: 'conflux_token');
    log('Loaded Conflux token: $token');
    return token;
  }

  Future<void> setToken(String token) async {
    final secureStorage = ref.watch(secureStorageProvider);
    await secureStorage.write(key: 'conflux_token', value: token);
    ref.invalidateSelf();
  }

  Future<void> deleteToken() async {
    final secureStorage = ref.watch(secureStorageProvider);
    await secureStorage.delete(key: 'conflux_token');
    ref.invalidateSelf();
  }
}