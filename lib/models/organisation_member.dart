import 'package:freezed_annotation/freezed_annotation.dart';

part 'organisation_member.freezed.dart';
part 'organisation_member.g.dart';

@freezed
abstract class OrganisationMember with _$OrganisationMember {
  factory OrganisationMember({
    required String organisation_id,
    required String organisation_name,
    required String organisation_website,
    required String organisation_email,
    required bool organisation_owner,
    required String team_id,
    required String team_name,
    required String team_email,
    required bool team_owner,
    required String user_id,
    required String display_name,
    required String email,
    required String? plane_id,
  }) = _OrganisationMember;

  factory OrganisationMember.fromJson(Map<String, dynamic> json) => _$OrganisationMemberFromJson(json);
}