import 'dart:math';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:conflux/models/particle.dart';
import 'package:conflux/providers/particle_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBackground extends HookConsumerWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primaryParticles = ref.watch(primaryParticlesProvider(50));
    final secondaryParticles = ref.watch(secondaryParticlesProvider(50));

    final controller = useAnimationController(
      duration: const Duration(seconds: 100),
    )..repeat();

    final animationValue = useAnimation(controller);

    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: RepaintBoundary(
        child: CustomPaint(
          painter: _AppBackgroundPainter(
            context: context,
            primaryParticles: primaryParticles,
            secondaryParticles: secondaryParticles,
            animationValue: animationValue,
          ),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class _AppBackgroundPainter extends CustomPainter {
  final BuildContext context;
  final List<Particle> primaryParticles;
  final List<Particle> secondaryParticles;
  final double animationValue;

  _AppBackgroundPainter({
    required this.context,
    required this.primaryParticles,
    required this.secondaryParticles,
    required this.animationValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final theta = animationValue * 2 * pi;

    // Store calculated positions to avoid recalculating
    final primaryPositions = <Particle, Offset>{};
    final secondaryPositions = <Particle, Offset>{};

    // Calculate and store primary particle positions
    for (final particle in primaryParticles) {
      final x =
          (particle.x + cos(theta * particle.direction) * particle.radius_x) *
          size.width;
      final y =
          (particle.y + sin(theta * particle.direction) * particle.radius_y) *
          size.height;
      primaryPositions[particle] = Offset(x, y);
    }

    // Calculate and store secondary particle positions
    for (final particle in secondaryParticles) {
      final x =
          (particle.x + cos(theta * particle.direction) * particle.radius_x) *
          size.width;
      final y =
          (particle.y + sin(theta * particle.direction) * particle.radius_y) *
          size.height;
      secondaryPositions[particle] = Offset(x, y);
    }

    final maxDistance = size.height > size.width ? size.width * 0.25 : size.height * 0.25;
    final colorScheme = Theme.of(context).colorScheme;
    for (final primaryParticle in primaryParticles) {
      final primaryPos = primaryPositions[primaryParticle]!;
      for (final secondaryParticle in secondaryParticles) {
        final secondaryPos = secondaryPositions[secondaryParticle]!;
        final distance = (primaryPos - secondaryPos).distance;

        if (distance <= maxDistance) {
          final shader = ui.Gradient.linear(primaryPos, secondaryPos, [
            colorScheme.primary,
            colorScheme.secondary,
          ]);

          final paint = Paint()
            ..shader = shader
            ..strokeWidth = 1.0;

          canvas.drawLine(primaryPos, secondaryPos, paint);
        }
      }
    }

    // Draw primary particle circles
    for (final particle in primaryParticles) {
      final position = primaryPositions[particle]!;
      final circleSize = (particle.size * 10).clamp(5.0, 10.0);

      final paint = Paint()..color = Theme.of(context).colorScheme.primary;

      canvas.drawCircle(position, circleSize, paint);
    }

    // Draw secondary particle circles
    for (final particle in secondaryParticles) {
      final position = secondaryPositions[particle]!;
      final circleSize = (particle.size * 10).clamp(5.0, 10.0);

      final paint = Paint()..color = Theme.of(context).colorScheme.secondary;

      canvas.drawCircle(position, circleSize, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _AppBackgroundPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue ||
        oldDelegate.primaryParticles != primaryParticles ||
        oldDelegate.secondaryParticles != secondaryParticles;
  }
}
