import 'package:conflux/components/conflux/conflux_card.dart';
import 'package:conflux/components/plane/selected_plane.dart';
import 'package:conflux/components/profile/greeting_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.end,
            runAlignment: MediaQuery.of(context).orientation == Orientation.portrait ? WrapAlignment.end : WrapAlignment.center,
            children: [Column(
              children: [
                GreetingTile(), ConfluxCard(),
              ],
            ), SelectedPlane()],
          ),
        ),
      ],
    );
  }
}
