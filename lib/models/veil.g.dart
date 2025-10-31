// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Veil _$VeilFromJson(Map<String, dynamic> json) => _Veil(
  id: json['id'] as String,
  created_at: DateTime.parse(json['created_at'] as String),
  name: json['name'] as String,
  region: json['region'] as String,
  host: json['host'] as String,
  port: (json['port'] as num).toInt(),
  public: json['public'] as bool,
);

Map<String, dynamic> _$VeilToJson(_Veil instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.created_at.toIso8601String(),
  'name': instance.name,
  'region': instance.region,
  'host': instance.host,
  'port': instance.port,
  'public': instance.public,
};
