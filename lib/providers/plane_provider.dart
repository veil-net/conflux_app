import 'package:conflux/main.dart';
import 'package:conflux/models/plane.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'plane_provider.g.dart';

@riverpod
Stream<List<Plane>> planes(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .map((event) => event.map((data) => Plane.fromJson(data)).toList());
}

@riverpod
Stream<Plane?> plane(Ref ref, String id) {
  ref.keepAlive();
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .eq('id', id)
      .map(
        (event) =>
            event.map((data) => Plane.fromJson(data)).toList().firstOrNull,
      );
}

@riverpod
Stream<List<Plane>> ownedPlanes(Ref ref) {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .eq('user_id', user.id)
      .map((event) => event.map((data) => Plane.fromJson(data)).toList());
}

@riverpod
Stream<Plane> privatePlane(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .eq('public', false)
      .map((event) => event.map((data) => Plane.fromJson(data)).toList().first);
}

@riverpod
Stream<Plane> publicPlane(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('planes')
      .stream(primaryKey: ['id'])
      .eq('public', true)
      .map((event) => event.map((data) => Plane.fromJson(data)).toList().first);
}
