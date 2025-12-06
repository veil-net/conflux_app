import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppCard extends HookConsumerWidget {
  final Widget child;
  const AppCard({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        color: Theme.of(context).colorScheme.surface,
        shadowColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: child,
      ),
    );
  }
}
