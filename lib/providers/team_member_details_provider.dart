import 'package:conflux/main.dart';
import 'package:conflux/models/team_memeber_details.dart';
import 'package:conflux/providers/team_member_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'team_member_details_provider.g.dart';

@riverpod
Future<List<TeamMemberDetails>> teamMemberDetails(
  Ref ref,
  String team_id,
) async {
  ref.keepAlive();
  ref.watch(teamMembersProvider(team_id));
  final teamMemberDetails = await supabase
      .from('team_member_details')
      .select('*')
      .eq('team_id', team_id)
      .then(
        (value) =>
            value.map((data) => TeamMemberDetails.fromJson(data)).toList(),
      );
  return teamMemberDetails;
}
