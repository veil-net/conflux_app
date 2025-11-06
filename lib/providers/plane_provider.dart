import 'package:conflux/main.dart';
import 'package:conflux/models/plane.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'plane_provider.g.dart';

@riverpod
class Planes extends _$Planes {
  @override
  Stream<List<Plane>> build() {
    ref.keepAlive();
    return supabase
        .from('planes')
        .stream(primaryKey: ['id'])
        .map(
          (event) =>
              event.map((data) => Plane.fromJson(data)).toList(),
        );
  }

  Future<void> createPlane(
    String name,
    String subnet,
    bool public,
    String veil_id,
    String subscription_id,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.post(
        '/plane',
        data: {
          'name': name,
          'subnet': subnet,
          'public': public,
          'veil_id': veil_id,
          'subscription_id': subscription_id,
        },
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deletePlane(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/plane?plane_id=$id');
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> updatePlaneSubscription(
    String id,
    String subscription_id,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.patch(
        '/plane/subscription',
        data: {'plane_id': id, 'subscription_id': subscription_id},
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> dissociatePlaneSubscription(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/plane/subscription?plane_id=$id');
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

@riverpod
Stream<Plane?> plane(Ref ref, String id) {
  ref.keepAlive();
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .eq('id', id)
      .limit(1)
      .map(
        (event) =>
            event.map((data) => Plane.fromJson(data)).toList().firstOrNull,
      );
}

@riverpod
Future<List<Plane>> ownedPlanes(Ref ref) async {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  final planes = await supabase
      .from('planes')
      .select('*')
      .eq('user_id', user.id);
  return planes.map((data) => Plane.fromJson(data)).toList();
}

@riverpod
Future<List<Plane>> privatePlanes(Ref ref) async {
  ref.keepAlive();
  final planes = await ref.watch(planesProvider.future);
  return planes.where((plane) => plane.public == false).toList().toList();
}

@riverpod
Future<List<Plane>> publicPlanes(Ref ref) async {
  ref.keepAlive();
  final planes = await ref.watch(planesProvider.future);
  return planes.where((plane) => plane.public == true).toList().toList();
}
