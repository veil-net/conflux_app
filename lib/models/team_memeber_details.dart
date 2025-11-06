import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_memeber_details.freezed.dart';
part 'team_memeber_details.g.dart';

@freezed
abstract class TeamMemberDetails with _$TeamMemberDetails {
  factory TeamMemberDetails({
    required String team_id,
    required String team_name,
    required String team_email,
    required bool team_owner,
    required String user_id,
    required String user_email,
    String? user_display_name,
  }) = _TeamMemberDetails;
  factory TeamMemberDetails.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberDetailsFromJson(json);
}
