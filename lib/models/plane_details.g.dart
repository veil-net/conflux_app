// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaneDetails _$PlaneDetailsFromJson(Map<String, dynamic> json) =>
    _PlaneDetails(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      user_id: json['user_id'] as String,
      veil_id: json['veil_id'] as String,
      name: json['name'] as String,
      subnet: json['subnet'] as String,
      public: json['public'] as bool,
      region: json['region'] as String,
      veil_host: json['veil_host'] as String,
      veil_port: (json['veil_port'] as num).toInt(),
      portals: (json['portals'] as num).toInt(),
    );

Map<String, dynamic> _$PlaneDetailsToJson(_PlaneDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'user_id': instance.user_id,
      'veil_id': instance.veil_id,
      'name': instance.name,
      'subnet': instance.subnet,
      'public': instance.public,
      'region': instance.region,
      'veil_host': instance.veil_host,
      'veil_port': instance.veil_port,
      'portals': instance.portals,
    };
