// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfluxSession _$ConfluxSessionFromJson(Map<String, dynamic> json) =>
    _ConfluxSession(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      user_id: json['user_id'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$ConfluxSessionToJson(_ConfluxSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'user_id': instance.user_id,
      'signature': instance.signature,
    };
