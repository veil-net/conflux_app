import 'dart:developer';

import 'package:conflux/components/plane/plane_selection_tile.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneSelectionList extends HookConsumerWidget {
  const PlaneSelectionList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planesDetails = ref.watch(planesDetailsProvider);
    final planeFilter = ref.watch(planeFilterProvider);
    final planePublicity = ref.watch(planePublicityProvider);
    return SliverToBoxAdapter(
      child: planesDetails.when(
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
          
          return Wrap(
            children: [
              for (var planeDetails in filteredData)
                PlaneSelectionTile(planeDetails: planeDetails),
            ],
          );
        },
        error: (error, stackTrace) {
          log('Error loading planes: $error');
          return TextButton(
            onPressed: () {
              ref.invalidate(planesDetailsProvider);
            },
            child: Text('Failed to load planes, retry'),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
