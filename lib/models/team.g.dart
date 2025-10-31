// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
  id: json['id'] as String,
  created_at: DateTime.parse(json['created_at'] as String),
  user_id: json['user_id'] as String,
  organisation_id: json['organisation_id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  plane_id: json['plane_id'] as String?,
);

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.created_at.toIso8601String(),
  'user_id': instance.user_id,
  'organisation_id': instance.organisation_id,
  'name': instance.name,
  'email': instance.email,
  'plane_id': instance.plane_id,
};
