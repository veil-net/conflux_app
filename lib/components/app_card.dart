import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppCard extends HookConsumerWidget {
  final Widget child;
  const AppCard({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withAlpha(200),
              borderRadius: BorderRadius.all(Radius.circular(16)),
              border: Border(
                right: BorderSide(color: Colors.grey.withAlpha(50)),
                bottom: BorderSide(color: Colors.grey.withAlpha(50)),
              )
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
