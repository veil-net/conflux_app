// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganisationMember _$OrganisationMemberFromJson(Map<String, dynamic> json) =>
    _OrganisationMember(
      organisation_id: json['organisation_id'] as String,
      organisation_name: json['organisation_name'] as String,
      organisation_website: json['organisation_website'] as String,
      organisation_email: json['organisation_email'] as String,
      organisation_owner: json['organisation_owner'] as bool,
      team_id: json['team_id'] as String,
      team_name: json['team_name'] as String,
      team_email: json['team_email'] as String,
      team_owner: json['team_owner'] as bool,
      user_id: json['user_id'] as String,
      display_name: json['display_name'] as String,
      email: json['email'] as String,
      plane_id: json['plane_id'] as String?,
    );

Map<String, dynamic> _$OrganisationMemberToJson(_OrganisationMember instance) =>
    <String, dynamic>{
      'organisation_id': instance.organisation_id,
      'organisation_name': instance.organisation_name,
      'organisation_website': instance.organisation_website,
      'organisation_email': instance.organisation_email,
      'organisation_owner': instance.organisation_owner,
      'team_id': instance.team_id,
      'team_name': instance.team_name,
      'team_email': instance.team_email,
      'team_owner': instance.team_owner,
      'user_id': instance.user_id,
      'display_name': instance.display_name,
      'email': instance.email,
      'plane_id': instance.plane_id,
    };
