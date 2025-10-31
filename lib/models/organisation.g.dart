// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Organisation _$OrganisationFromJson(Map<String, dynamic> json) =>
    _Organisation(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      user_id: json['user_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$OrganisationToJson(_Organisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'user_id': instance.user_id,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
    };
