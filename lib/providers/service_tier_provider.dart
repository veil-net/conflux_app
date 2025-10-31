import 'package:conflux/providers/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_tier_provider.g.dart';

@riverpod
Future<int> serviceTier(Ref ref) async {
  final api = ref.read(apiProvider);
  final response = await api.get('/stripe/service-tier');
  return response.data as int;
}
