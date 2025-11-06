import 'package:conflux/main.dart';
import 'package:conflux/models/conflux.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_provider.g.dart';

@riverpod
class Confluxes extends _$Confluxes {
  @override
  Future<List<Conflux>> build() async {
    return await supabase
        .from('confluxes')
        .select('*')
        .then((value) => value.map((data) => Conflux.fromJson(data)).toList());
  }

  Future<void> createConflux(String name, String plane_id, String? tag) async {
    final api = ref.read(apiProvider);
    try {
      await api.post('/conflux?plane_id=$plane_id&tag=$tag');
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deleteConflux(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/conflux?conflux_id=$id');
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

@riverpod
Stream<Conflux?> confluxByID(Ref ref, String id) {
  ref.keepAlive();
  return supabase
      .from('confluxes')
      .stream(primaryKey: ['id'])
      .eq('id', id)
      .map(
        (event) =>
            event.map((data) => Conflux.fromJson(data)).toList().firstOrNull,
      );
}

@riverpod
Future<List<Conflux>> confluxRifts(Ref ref) async {
  ref.keepAlive();
  final confluxes = await ref.watch(confluxesProvider.future);
  return confluxes.where((conflux) => conflux.portal == false).toList();
}

@riverpod
Future<List<Conflux>> confluxPortals(Ref ref) async {
  ref.keepAlive();
  final confluxes = await ref.watch(confluxesProvider.future);
  return confluxes.where((conflux) => conflux.portal == true).toList();
}
