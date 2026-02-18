import 'dart:developer';
import 'package:conflux/models/conflux.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_provider.g.dart';

@riverpod
class Confluxes extends _$Confluxes {
  @override
  Future<List<Conflux>> build() async {
    ref.keepAlive();
    final api = ref.read(apiProvider);
    final response = await api.get('/conflux/list');
    log(response.data.toString());
    final rawList = response.data as List;
    return rawList
        .map((e) => Conflux.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createConflux(String name, String realm_id, String? tag) async {
    final api = ref.read(apiProvider);
    try {
      await api.post('/conflux', data: {'realm_id': realm_id, 'tag': tag});
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
Future<Conflux> confluxByID(Ref ref, String id) async {
  ref.keepAlive();
  final api = ref.read(apiProvider);
  final response = await api.get('/conflux?conflux_id=$id');
  final data = response.data as Map<String, dynamic>;
  return Conflux.fromJson(data);
}

@riverpod
Future<List<Conflux>> confluxRifts(Ref ref) async {
  ref.keepAlive();
  final confluxes = await ref.watch(confluxesProvider.future);
  return confluxes.where((conflux) => conflux.rift == false).toList();
}

@riverpod
Future<List<Conflux>> confluxPortals(Ref ref) async {
  ref.keepAlive();
  final confluxes = await ref.watch(confluxesProvider.future);
  return confluxes.where((conflux) => conflux.portal == true).toList();
}
