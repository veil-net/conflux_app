import 'dart:developer';

import 'package:conflux/providers/current_session_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
Dio api(Ref ref) {
  final session = ref.watch(currentSessionProvider);
  if (session == null) {
    throw Exception('Session not found');
  }

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://guardian.veilnet.app',
      headers: {
        'Authorization': 'Bearer ${session.accessToken}',
      },
    ),
  );
  log('API initialized');
  return dio;
}