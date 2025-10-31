import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'public_ip_provider.g.dart';

@riverpod
Future<String> publicIP(Ref ref) async {
  ref.keepAlive();
  final dio = Dio(BaseOptions(baseUrl: "https://api.ipify.org"));
  final response = await dio.get("");
  return response.data;
}
