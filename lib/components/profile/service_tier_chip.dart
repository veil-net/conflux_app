import 'dart:ui';

import 'package:conflux/providers/service_tier_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ServiceTierChip extends HookConsumerWidget {
  const ServiceTierChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serviceTier = ref.watch(serviceTierProvider);
    return serviceTier.when(
      data: (data) {
        switch (data) {
          case 0:
            return AppChip(label: 'Community');
          case 1:
            return AppChip(label: 'Personal');
          case 2:
            return AppChip(label: 'Team');
          default:
            return AppChip(label: 'Unknown');
        }
      },
      error: (error, stackTrace) => IconButton(
        onPressed: () {
          ref.invalidate(serviceTierProvider);
        },
        icon: const Icon(Icons.refresh, color: Colors.red),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class AppChip extends StatelessWidget {
  final String label;
  const AppChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
