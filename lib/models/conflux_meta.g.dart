// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfluxMeta _$ConfluxMetaFromJson(Map<String, dynamic> json) => _ConfluxMeta(
  id: json['id'] as String,
  last_seen: DateTime.parse(json['last_seen'] as String),
  user_id: json['user_id'] as String,
);

Map<String, dynamic> _$ConfluxMetaToJson(_ConfluxMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_seen': instance.last_seen.toIso8601String(),
      'user_id': instance.user_id,
    };
