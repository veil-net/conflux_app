import 'dart:developer';

import 'package:conflux/components/realm/realm_tile.dart';
import 'package:conflux/providers/realm_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmList extends HookConsumerWidget {
  const RealmList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realmsDetails = ref.watch(realmsDetailsProvider);
    final realmFilter = ref.watch(realmFilterProvider);
    final realmPublicity = ref.watch(realmPublicityProvider);
    return realmsDetails.when(
      data: (data) {
        var filteredData = data
            .where((realmDetails) => realmDetails.name.contains(realmFilter))
            .toList();

        // Apply publicity filter
        if (realmPublicity != null) {
          filteredData = filteredData
              .where((realmDetails) => realmDetails.public == realmPublicity)
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
            for (var realmDetails in filteredData)
              RealmTile(realmDetails: realmDetails),
          ],
        );
      },
      error: (error, stackTrace) {
        log('Error loading realms: $error');
        return Center(
          child: TextButton(
            onPressed: () {
              ref.invalidate(realmsDetailsProvider);
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
