// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Conflux _$ConfluxFromJson(Map<String, dynamic> json) => _Conflux(
  id: json['id'] as String,
  created_at: DateTime.parse(json['created_at'] as String),
  last_seen: json['last_seen'] == null
      ? null
      : DateTime.parse(json['last_seen'] as String),
  user_id: json['user_id'] as String,
  tag: json['tag'] as String?,
  signature: json['signature'] as String?,
  cidr: json['cidr'] as String?,
  subnet: json['subnet'] as String,
  realm: json['realm'] as String,
  realm_id: json['realm_id'] as String,
  rift: json['rift'] as bool?,
  portal: json['portal'] as bool?,
  region: json['region'] as String,
  veil_host: json['veil_host'] as String,
  veil_port: (json['veil_port'] as num).toInt(),
);

Map<String, dynamic> _$ConfluxToJson(_Conflux instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.created_at.toIso8601String(),
  'last_seen': instance.last_seen?.toIso8601String(),
  'user_id': instance.user_id,
  'tag': instance.tag,
  'signature': instance.signature,
  'cidr': instance.cidr,
  'subnet': instance.subnet,
  'realm': instance.realm,
  'realm_id': instance.realm_id,
  'rift': instance.rift,
  'portal': instance.portal,
  'region': instance.region,
  'veil_host': instance.veil_host,
  'veil_port': instance.veil_port,
};

_Taint _$TaintFromJson(Map<String, dynamic> json) =>
    _Taint(taint: json['taint'] as String);

Map<String, dynamic> _$TaintToJson(_Taint instance) => <String, dynamic>{
  'taint': instance.taint,
};
