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
            return Chip(
              label: Text(
                'Community',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            );
          case 1:
            return Chip(
              label: Text(
                'Plus',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            );
          case 2:
            return Chip(
              label: Text(
                'Max',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            );
          default:
            return Chip(
              label: Text(
                'Unknown',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            );
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