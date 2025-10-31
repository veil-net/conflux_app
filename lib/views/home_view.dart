import 'package:conflux/components/conflux/conflux_metrics.dart';
import 'package:conflux/components/conflux/current_conflux_card.dart';
import 'package:conflux/components/plane/selected_plane.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverFillRemaining(
            child: Wrap(
              runAlignment: WrapAlignment.end,
              children: [ConfluxMetrics(), CurrentConfluxCard(), SelectedPlane()],
            ),
          ),
        ],
      ),
    );
  }
}
