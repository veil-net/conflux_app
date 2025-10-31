import 'package:conflux/main.dart';
import 'package:conflux/models/organisation.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'organisation_provider.g.dart';

@riverpod
Stream<List<Organisation>> organisations(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('organisations')
      .stream(primaryKey: ['id'])
      .map(
        (event) => event.map((data) => Organisation.fromJson(data)).toList(),
      );
}

@riverpod
Stream<Organisation?> ownedOrganisation(Ref ref) {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  return supabase
      .from('organisations')
      .stream(primaryKey: ['id'])
      .eq('user_id', user.id)
      .limit(1)
      .map(
        (event) => event.map((data) => Organisation.fromJson(data)).toList().firstOrNull,
      );
}
