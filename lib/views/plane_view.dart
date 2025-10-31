import 'package:conflux/components/plane/plane_search_card.dart';
import 'package:conflux/components/plane/plane_selection_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneView extends HookConsumerWidget {
  const PlaneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          PlaneSearchCard(),
          PlaneSelectionList(),
        ],
      ),
    );
  }
}
