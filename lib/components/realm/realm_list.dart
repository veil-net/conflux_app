import 'dart:developer';

import 'package:conflux/components/realm/realm_tile.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmList extends HookConsumerWidget {
  const RealmList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realms = ref.watch(realmsProvider);
    final realmFilter = ref.watch(realmFilterProvider);
    final realmPublicity = ref.watch(realmPublicityProvider);
    return realms.when(
      data: (data) {
        var filteredData = data
            .where((realm) => realm.name.contains(realmFilter))
            .toList();

        // Apply publicity filter
        if (realmPublicity != null) {
          filteredData = filteredData
              .where((realm) => realm.public == realmPublicity)
              .toList();
        }

        if (filteredData.isEmpty) {
          return Center(
            child: Text(
              'No realms found',
              style: TextStyle(color: Colors.grey),
            ),
          );
        }

        return Wrap(
          children: [
            for (var realm in filteredData)
              RealmTile(realm: realm),
          ],
        );
      },
      error: (error, stackTrace) {
        log('Error loading realms: $error');
        return Center(
          child: TextButton(
            onPressed: () {
              ref.invalidate(realmsProvider);
            },
            child: Text(
              'Failed to load realms, retry',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
