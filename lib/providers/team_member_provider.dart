import 'package:conflux/main.dart';
import 'package:conflux/models/team_member.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'team_member_provider.g.dart';

@riverpod
class TeamMembers extends _$TeamMembers {
  @override
  Stream<List<TeamMember>> build(String team_id) {
    ref.keepAlive();
    return supabase
        .from('team_members')
        .stream(primaryKey: ['id'])
        .eq('team_id', team_id)
        .map(
          (event) =>
              event.map((data) => TeamMember.fromJson(data)).toList(),
        );
  }

  Future<void> removeTeamMember(String member_user_id) async {
    try {
      final api = ref.read(apiProvider);
      await api.delete(
        '/org/team/member',
        queryParameters: {'team_id': team_id, 'member_user_id': member_user_id},
      );
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
