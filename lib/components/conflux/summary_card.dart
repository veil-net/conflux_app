import 'package:conflux/components/app_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxSummaryCard extends HookConsumerWidget {
  const ConfluxSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Flexible(
          child: AppCard(
            child: ListTile(
              leading: Icon(
                Icons.cyclone,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                '5',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Portals',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
        Flexible(
          child: AppCard(
            child: ListTile(
              leading: Icon(
                Icons.electric_bolt,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                '5',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Rifts',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
