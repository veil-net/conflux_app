import 'dart:developer';

import 'package:conflux/components/plane/plane_tile.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneList extends HookConsumerWidget {
  const PlaneList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planesDetails = ref.watch(planesDetailsProvider);
    final planeFilter = ref.watch(planeFilterProvider);
    final planePublicity = ref.watch(planePublicityProvider);
    return planesDetails.when(
      data: (data) {
        var filteredData = data
            .where((planeDetails) => planeDetails.name.contains(planeFilter))
            .toList();

        // Apply publicity filter
        if (planePublicity != null) {
          filteredData = filteredData
              .where((planeDetails) => planeDetails.public == planePublicity)
              .toList();
        }

        if (filteredData.isEmpty) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                'No planes found',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          );
        }

        return SliverToBoxAdapter(
          child: Wrap(
            children: [
              for (var planeDetails in filteredData)
                PlaneTile(planeDetails: planeDetails),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        log('Error loading planes: $error');
        return SliverFillRemaining(
          child: Center(
            child: TextButton(
              onPressed: () {
                ref.invalidate(planesDetailsProvider);
              },
              child: Text(
                'Failed to load planes, retry',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          ),
        );
      },
      loading: () => SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
