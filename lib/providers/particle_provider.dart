import 'dart:math';
import 'dart:ui';

import 'package:conflux/providers/veilnet_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'particle_provider.g.dart';

class Particle {
  double angle; // Current angle in radians
  double radius; // Distance from center
  double targetRadius; // Target radius for orbit changes
  double angularVelocity; // Speed of rotation
  double targetAngularVelocity; // Target angular velocity
  double size;
  double opacity;
  bool clockwise; // Direction of orbit
  double mass; // Mass for gravitational calculations

  Particle({
    required this.angle,
    required this.radius,
    required this.targetRadius,
    required this.angularVelocity,
    required this.targetAngularVelocity,
    this.size = 8.0,
    this.opacity = 0.6,
    this.clockwise = true,
    this.mass = 1.0,
  });

  // Calculate current position based on angle and radius
  Offset get position {
    final center = const Offset(0.5, 0.5);
    return Offset(
      center.dx + cos(angle) * radius,
      center.dy + sin(angle) * radius,
    );
  }
}

@riverpod
class Particles extends _$Particles {
  final _random = Random();
  
  @override
  List<Particle> build() {
    ref.keepAlive();
    return List.generate(50, (_) => _createParticle());
  }

  Particle _createParticle() {
    // Create particles with varied orbital properties
    final angle = _random.nextDouble() * 2 * pi;
    final radius = 0.1 + _random.nextDouble() * 0.3; // Orbit radius between 0.1 and 0.4
    final targetRadius = 0.1 + _random.nextDouble() * 0.3;
    final angularVelocity = (0.002 + _random.nextDouble() * 0.008) * (_random.nextBool() ? 1 : -1); // Clockwise or counter-clockwise
    final targetAngularVelocity = (0.002 + _random.nextDouble() * 0.008) * (_random.nextBool() ? 1 : -1);
    final mass = 0.5 + _random.nextDouble() * 1.5; // Mass variation for gravitational effects
    
    return Particle(
      angle: angle,
      radius: radius,
      targetRadius: targetRadius,
      angularVelocity: angularVelocity,
      targetAngularVelocity: targetAngularVelocity,
      size: 6.0 + _random.nextDouble() * 8.0,
      opacity: 0.7 + _random.nextDouble() * 0.3,
      clockwise: angularVelocity > 0,
      mass: mass,
    );
  }

  void update() {
    // Check VeilNet connection state
    final veilNetState = ref.read(veilNetProvider);
    final isConnected = veilNetState == VeilNetState.connected;
    
    final updatedParticles = <Particle>[];
    
    for (final particle in state) {
      // Create a new particle with updated properties
      final newParticle = Particle(
        angle: particle.angle,
        radius: particle.radius,
        targetRadius: particle.targetRadius,
        angularVelocity: particle.angularVelocity,
        targetAngularVelocity: particle.targetAngularVelocity,
        size: particle.size,
        opacity: particle.opacity,
        clockwise: particle.clockwise,
        mass: particle.mass,
      );
      
      // Update orbital motion with speed based on connection state
      _updateOrbitalMotion(newParticle, isConnected);
      updatedParticles.add(newParticle);
    }
    
    state = updatedParticles;
  }

  void _updateOrbitalMotion(Particle particle, bool isConnected) {
    // Adjust speed multiplier based on connection state
    final speedMultiplier = isConnected ? 1.0 : 0.1; // Much slower when disconnected
    
    // Gradually change radius toward target radius
    particle.radius = particle.radius + (particle.targetRadius - particle.radius) * 0.002 * speedMultiplier;
    
    // Gradually change angular velocity toward target
    particle.angularVelocity = particle.angularVelocity + (particle.targetAngularVelocity - particle.angularVelocity) * 0.001 * speedMultiplier;
    
    // Update angle based on angular velocity
    particle.angle += particle.angularVelocity * speedMultiplier;
    
    // Keep angle within 0 to 2π range
    particle.angle = particle.angle % (2 * pi);
    if (particle.angle < 0) particle.angle += 2 * pi;
    
    // Occasionally change orbital parameters for dynamic orbits (only when connected)
    if (isConnected && _random.nextDouble() < 0.001) { // 0.1% chance per frame
      // Change target radius
      particle.targetRadius = 0.1 + _random.nextDouble() * 0.3;
      
      // Change target angular velocity
      particle.targetAngularVelocity = (0.002 + _random.nextDouble() * 0.008) * (_random.nextBool() ? 1 : -1);
      
      // Update clockwise direction
      particle.clockwise = particle.targetAngularVelocity > 0;
    }
    
    // Ensure radius stays within bounds
    particle.radius = particle.radius.clamp(0.05, 0.45);
    particle.targetRadius = particle.targetRadius.clamp(0.05, 0.45);
    
    // Add some orbital perturbations for more natural movement (only when connected)
    if (isConnected && _random.nextDouble() < 0.005) { // 0.5% chance per frame
      final perturbation = (_random.nextDouble() - 0.5) * 0.001;
      particle.angularVelocity += perturbation;
    }
  }
}
