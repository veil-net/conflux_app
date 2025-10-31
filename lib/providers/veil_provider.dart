import 'package:conflux/main.dart';
import 'package:conflux/models/veil.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'veil_provider.g.dart';

@riverpod
Stream<List<Veil>> veils(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('veils')
      .stream(primaryKey: ['id'])
      .map((event) => event.map((data) => Veil.fromJson(data)).toList());
}

@riverpod
Stream<Veil?> veil(Ref ref, String name) {
  ref.keepAlive();
  return supabase
      .from('veils')
      .stream(primaryKey: ['id'])
      .eq('name', name)
      .limit(1)
      .map((event) => event.map((data) => Veil.fromJson(data)).toList().firstOrNull);
}