import 'package:conflux/models/conflux.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_taint_provider.g.dart';

@riverpod
class ConfluxTaint extends _$ConfluxTaint {
  @override
  Future<List<Taint>> build(String conflux_id) async {
    ref.keepAlive();
    final api = ref.read(apiProvider);
    final response = await api.get('/conflux/taint?conflux_id=$conflux_id');
    final rawList = response.data as List;
    return rawList
        .map((e) => Taint.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> addTaint(String taint) async {
    final api = ref.read(apiProvider);
    try {
      await api.post('/conflux/taint?conflux_id=$conflux_id&taint=$taint');
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> removeTaint(String taint) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/conflux/taint?conflux_id=$conflux_id&taint=$taint');
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
