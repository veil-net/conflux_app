// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plane _$PlaneFromJson(Map<String, dynamic> json) => _Plane(
  id: json['id'] as String,
  created_at: DateTime.parse(json['created_at'] as String),
  user_id: json['user_id'] as String,
  veil_id: json['veil_id'] as String,
  name: json['name'] as String,
  subnet: json['subnet'] as String,
  public: json['public'] as bool,
  portals: (json['portals'] as num).toInt(),
  subscription: json['subscription'] as String?,
);

Map<String, dynamic> _$PlaneToJson(_Plane instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.created_at.toIso8601String(),
  'user_id': instance.user_id,
  'veil_id': instance.veil_id,
  'name': instance.name,
  'subnet': instance.subnet,
  'public': instance.public,
  'portals': instance.portals,
  'subscription': instance.subscription,
};
