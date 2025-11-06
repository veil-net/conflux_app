// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_memeber_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamMemberDetails _$TeamMemberDetailsFromJson(Map<String, dynamic> json) =>
    _TeamMemberDetails(
      team_id: json['team_id'] as String,
      team_name: json['team_name'] as String,
      team_email: json['team_email'] as String,
      team_owner: json['team_owner'] as bool,
      user_id: json['user_id'] as String,
      user_email: json['user_email'] as String,
      user_display_name: json['user_display_name'] as String?,
    );

Map<String, dynamic> _$TeamMemberDetailsToJson(_TeamMemberDetails instance) =>
    <String, dynamic>{
      'team_id': instance.team_id,
      'team_name': instance.team_name,
      'team_email': instance.team_email,
      'team_owner': instance.team_owner,
      'user_id': instance.user_id,
      'user_email': instance.user_email,
      'user_display_name': instance.user_display_name,
    };
