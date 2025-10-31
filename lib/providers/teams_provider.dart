import 'package:conflux/main.dart';
import 'package:conflux/models/team.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teams_provider.g.dart';

@riverpod
Stream<List<Team>> teams(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('teams')
      .stream(primaryKey: ['id'])
      .map((event) => event.map((data) => Team.fromJson(data)).toList());
}

@riverpod
Stream<List<Team>> ownedTeams(Ref ref) {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  return supabase
      .from('teams')
      .stream(primaryKey: ['id'])
      .eq('user_id', user.id)
      .map((event) => event.map((data) => Team.fromJson(data)).toList());
}
