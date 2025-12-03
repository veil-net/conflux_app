import 'package:conflux/models/veil.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'veil_provider.g.dart';

@riverpod
Stream<List<Veil>> veils(Ref ref) {
  ref.keepAlive();
  ref.watch(currentUserProvider);
  final supabase = ref.read(supabaseClientProvider);
  return supabase
      .from('veils')
      .stream(primaryKey: ['id'])
      .map((event) => event.map((data) => Veil.fromJson(data)).toList());
}

@riverpod
Stream<Veil?> veil(Ref ref, String name) {
  ref.keepAlive();
  final supabase = ref.read(supabaseClientProvider);
  return supabase
      .from('veils')
      .stream(primaryKey: ['id'])
      .eq('name', name)
      .limit(1)
      .map((event) => event.map((data) => Veil.fromJson(data)).toList().firstOrNull);
}