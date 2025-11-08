import 'dart:io';

import 'package:conflux/components/conflux/conflux_card.dart';
import 'package:conflux/components/conflux/conflux_summary_card.dart';
import 'package:conflux/components/plane/selected_plane.dart';
import 'package:conflux/components/profile/greeting_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid || Platform.isIOS) {
      return CustomScrollView(
        slivers: [
          PinnedHeaderSliver(child: ConfluxCard()),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [GreetingTile(), SelectedPlane()],
            ),
          ),
          SliverToBoxAdapter(child: ConfluxSummaryCard()),
        ],
      );
    }

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return CustomScrollView(
        slivers: [
          PinnedHeaderSliver(child: ConfluxCard()),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [GreetingTile(), ConfluxSummaryCard(), SelectedPlane()],
            ),
          ),
        ],
      );
    }

    return Center(child: Text('Unsupported platform'));
  }
}
