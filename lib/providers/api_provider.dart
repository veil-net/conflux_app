import 'package:conflux/main.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
Dio api(Ref ref) {
  final session = supabase.auth.currentSession;
  if (session == null) {
    throw Exception('Session not found');
  }

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://guardian.veilnet.app',
      headers: {'Authorization': 'Bearer ${session.accessToken}'},
    ),
  );
  return dio;
}
