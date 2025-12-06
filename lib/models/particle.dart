import 'package:freezed_annotation/freezed_annotation.dart';

part 'particle.freezed.dart';
part 'particle.g.dart';

@freezed
abstract class Particle with _$Particle {
  factory Particle({
    required double x,
    @Default(0.0) double current_x, 
    required double y,
    @Default(0.0) double current_y,
    required double radius_x,
    required double radius_y,
    required double size,
    required double opacity,
    required int direction,
  }) = _Particle;

  factory Particle.fromJson(Map<String, dynamic> json) =>
      _$ParticleFromJson(json);
}
