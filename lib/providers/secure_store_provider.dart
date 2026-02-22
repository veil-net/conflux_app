import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_store_provider.g.dart';

@riverpod
FlutterSecureStorage secureStorage(Ref ref) {
  ref.keepAlive();
  return FlutterSecureStorage();
}