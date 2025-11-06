// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) => _TeamMember(
  id: json['id'] as String,
  created_at: DateTime.parse(json['created_at'] as String),
  team_id: json['team_id'] as String,
  user_id: json['user_id'] as String,
);

Map<String, dynamic> _$TeamMemberToJson(_TeamMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'team_id': instance.team_id,
      'user_id': instance.user_id,
    };
