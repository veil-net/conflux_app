// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationToken _$RegistrationTokenFromJson(Map<String, dynamic> json) =>
    _RegistrationToken(
      created_at: DateTime.parse(json['created_at'] as String),
      user_id: json['user_id'] as String,
      plane_id: json['plane_id'] as String,
      token_hash: json['token_hash'] as String,
      expires_at: DateTime.parse(json['expires_at'] as String),
      token_id: json['token_id'] as String,
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$RegistrationTokenToJson(_RegistrationToken instance) =>
    <String, dynamic>{
      'created_at': instance.created_at.toIso8601String(),
      'user_id': instance.user_id,
      'plane_id': instance.plane_id,
      'token_hash': instance.token_hash,
      'expires_at': instance.expires_at.toIso8601String(),
      'token_id': instance.token_id,
      'tag': instance.tag,
    };
