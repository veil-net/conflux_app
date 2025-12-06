// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Particle _$ParticleFromJson(Map<String, dynamic> json) => _Particle(
  x: (json['x'] as num).toDouble(),
  current_x: (json['current_x'] as num?)?.toDouble() ?? 0.0,
  y: (json['y'] as num).toDouble(),
  current_y: (json['current_y'] as num?)?.toDouble() ?? 0.0,
  radius_x: (json['radius_x'] as num).toDouble(),
  radius_y: (json['radius_y'] as num).toDouble(),
  size: (json['size'] as num).toDouble(),
  opacity: (json['opacity'] as num).toDouble(),
  direction: (json['direction'] as num).toInt(),
);

Map<String, dynamic> _$ParticleToJson(_Particle instance) => <String, dynamic>{
  'x': instance.x,
  'current_x': instance.current_x,
  'y': instance.y,
  'current_y': instance.current_y,
  'radius_x': instance.radius_x,
  'radius_y': instance.radius_y,
  'size': instance.size,
  'opacity': instance.opacity,
  'direction': instance.direction,
};
