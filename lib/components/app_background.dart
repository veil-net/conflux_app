import 'dart:async';
import 'dart:math';

import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBackground extends HookConsumerWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary; // Cyan
    final secondaryColor = theme.colorScheme.secondary; // Purple

    // Use continuous time that never resets - sin/cos are periodic so it loops seamlessly
    final continuousTime = useState(0.0);
    
    // Pulse animation for connections
    final pulseController = useAnimationController(
      duration: const Duration(seconds: 1),
    );
  
    useEffect(() {
      pulseController.repeat(reverse: true);
      
      // Continuously increment time - since sin/cos are periodic, this creates seamless looping
      final startTime = DateTime.now();
      final timer = Stream.periodic(
        const Duration(milliseconds: 16), // ~60fps
      ).listen((_) {
        final elapsed = DateTime.now().difference(startTime);
        continuousTime.value = elapsed.inMilliseconds / 1000.0;
      });
      
      return () => timer.cancel();
    }, []);
    
    // Pulse animation value
    final pulseValue = useAnimation(
      Tween(begin: 0.3, end: 1.0).animate(
        CurvedAnimation(parent: pulseController, curve: Curves.easeInOut),
      ),
    );

    // Generate nodes (will be stable across rebuilds)
    final nodes = useMemoized(() => _generateNodes(100), []);

    return RepaintBoundary(
      child: CustomPaint(
        painter: _NetworkBackgroundPainter(
          darkMode: darkMode,
          primaryColor: primaryColor,
          secondaryColor: secondaryColor,
          animationValue: continuousTime.value, // Continuously incrementing - sin/cos handle periodicity
          pulseValue: pulseValue,
          nodes: nodes,
        ),
        size: Size.infinite,
      ),
    );
  }

  List<_NetworkNode> _generateNodes(int count) {
    final random = Random();
    return List.generate(count, (i) {
      // Distribute nodes across screen with some variation
      final baseX = (i % 10) / 10.0;
      final baseY = (i ~/ 10) / (count / 10.0);
      
      return _NetworkNode(
        baseX: baseX + (random.nextDouble() - 0.5) * 0.3,
        baseY: baseY + (random.nextDouble() - 0.5) * 0.3,
        amplitudeX: 0.15 + random.nextDouble() * 0.15,
        amplitudeY: 0.15 + random.nextDouble() * 0.15,
        speedX: 0.5 + random.nextDouble() * 1.0,
        speedY: 0.5 + random.nextDouble() * 1.0,
        phaseX: random.nextDouble() * 2 * pi,
        phaseY: random.nextDouble() * 2 * pi,
        size: 3.0 + random.nextDouble() * 4.0,
        colorMix: random.nextDouble(), // 0 = cyan, 1 = purple
      );
    });
  }
}

class _NetworkNode {
  final double baseX;
  final double baseY;
  final double amplitudeX;
  final double amplitudeY;
  final double speedX;
  final double speedY;
  final double phaseX;
  final double phaseY;
  final double size;
  final double colorMix; // 0.0 = cyan, 1.0 = purple

  _NetworkNode({
    required this.baseX,
    required this.baseY,
    required this.amplitudeX,
    required this.amplitudeY,
    required this.speedX,
    required this.speedY,
    required this.phaseX,
    required this.phaseY,
    required this.size,
    required this.colorMix,
  });

  Offset getPosition(double time) {
    return Offset(
      baseX + amplitudeX * sin(time * speedX + phaseX),
      baseY + amplitudeY * cos(time * speedY + phaseY),
    );
  }
}

class _NetworkBackgroundPainter extends CustomPainter {
  final bool darkMode;
  final Color primaryColor;
  final Color secondaryColor;
  final double animationValue;
  final double pulseValue;
  final List<_NetworkNode> nodes;

  _NetworkBackgroundPainter({
    required this.darkMode,
    required this.primaryColor,
    required this.secondaryColor,
    required this.animationValue,
    required this.pulseValue,
    required this.nodes,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw base background
    final baseColor = darkMode ? const Color.fromARGB(255, 28, 25, 23) : Color.fromARGB(255, 245, 245, 244);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), Paint()..color = baseColor);

    // Use continuous time directly - sin/cos are periodic so modulo 2π for seamless looping
    final time = animationValue / 5;
    final positions = nodes.map((node) => Offset(
      node.getPosition(time).dx * size.width,
      node.getPosition(time).dy * size.height,
    )).toList();

    // Connection distance threshold
    final maxConnectionDistance = (size.width + size.height) / 2 * 0.15;

    // Draw connections between nearby nodes
    final connections = <_Connection>[];
    for (int i = 0; i < positions.length; i++) {
      for (int j = i + 1; j < positions.length; j++) {
        final distance = (positions[i] - positions[j]).distance;
        if (distance < maxConnectionDistance) {
          connections.add(_Connection(
            from: positions[i],
            to: positions[j],
            distance: distance,
            maxDistance: maxConnectionDistance,
            fromNode: nodes[i],
            toNode: nodes[j],
          ));
        }
      }
    }

    // Draw connections with gradient colors
    for (final connection in connections) {
      _drawConnection(canvas, connection, pulseValue);
    }

    // Draw nodes
    for (int i = 0; i < nodes.length; i++) {
      _drawNode(canvas, positions[i], nodes[i], pulseValue, size);
    }
  }

  void _drawConnection(Canvas canvas, _Connection connection, double pulse) {
    final distanceRatio = connection.distance / connection.maxDistance;
    final opacity = (1.0 - distanceRatio) * pulse;
    
    // Mix colors based on node positions
    final fromColorMix = connection.fromNode.colorMix;
    final toColorMix = connection.toNode.colorMix;
    final avgColorMix = (fromColorMix + toColorMix) / 2;
    
    // Opacity based on distance and pulse
    final lineAlpha = (opacity * (darkMode ? 100 : 60)).round().clamp(0, 255);
    
    // Draw gradient along the line for smooth color flow
    if (lineAlpha > 15) {
      final gradientPaint = Paint()
        ..shader = LinearGradient(
          colors: [
            primaryColor.withAlpha((lineAlpha * (1 - fromColorMix)).round()),
            Color.lerp(primaryColor, secondaryColor, avgColorMix)!
                .withAlpha((lineAlpha * 1.2).round().clamp(0, 255)),
            secondaryColor.withAlpha((lineAlpha * (1 - toColorMix)).round()),
          ],
          stops: const [0.0, 0.5, 1.0],
        ).createShader(
          Rect.fromPoints(connection.from, connection.to),
        )
        ..strokeWidth = 1.0 + (pulse * 0.5)
        ..style = PaintingStyle.stroke;
      
      canvas.drawLine(connection.from, connection.to, gradientPaint);
    }
  }

  void _drawNode(Canvas canvas, Offset position, _NetworkNode node, double pulse, Size canvasSize) {
    // Determine node color based on colorMix (blend between cyan and purple)
    final nodeColor = Color.lerp(primaryColor, secondaryColor, node.colorMix)!;
    
    // Node opacity and glow
    final nodeAlpha = darkMode ? 180 : 120;
    final nodePaint = Paint()
      ..color = nodeColor.withAlpha((nodeAlpha * pulse).round().clamp(0, 255));
    
    // Draw node with glow
    final glowSize = node.size * (1.0 + pulse * 0.3);
    final glowPaint = Paint()
      ..color = nodeColor.withAlpha((nodeAlpha * 0.3 * pulse).round().clamp(0, 255))
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    
    canvas.drawCircle(position, glowSize, glowPaint);
    canvas.drawCircle(position, node.size, nodePaint);
    
    // Add inner highlight
    final highlightPaint = Paint()
      ..color = Colors.white.withAlpha((30 * pulse).round())
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
    canvas.drawCircle(position, node.size * 0.5, highlightPaint);
  }

  @override
  bool shouldRepaint(covariant _NetworkBackgroundPainter oldDelegate) {
    return true;
  }
}

class _Connection {
  final Offset from;
  final Offset to;
  final double distance;
  final double maxDistance;
  final _NetworkNode fromNode;
  final _NetworkNode toNode;

  _Connection({
    required this.from,
    required this.to,
    required this.distance,
    required this.maxDistance,
    required this.fromNode,
    required this.toNode,
  });
}
