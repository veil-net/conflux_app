// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamInvitation _$TeamInvitationFromJson(Map<String, dynamic> json) =>
    _TeamInvitation(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      user_id: json['user_id'] as String,
      organisation_id: json['organisation_id'] as String,
      organisation_name: json['organisation_name'] as String,
      team_id: json['team_id'] as String,
      team_name: json['team_name'] as String,
      invited_user: json['invited_user'] as String,
      invited_user_email: json['invited_user_email'] as String,
      user_email: json['user_email'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$TeamInvitationToJson(_TeamInvitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'user_id': instance.user_id,
      'organisation_id': instance.organisation_id,
      'organisation_name': instance.organisation_name,
      'team_id': instance.team_id,
      'team_name': instance.team_name,
      'invited_user': instance.invited_user,
      'invited_user_email': instance.invited_user_email,
      'user_email': instance.user_email,
      'status': instance.status,
    };
