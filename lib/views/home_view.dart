import 'dart:ui';

import 'package:conflux/components/conflux/conflux_card.dart';
import 'package:conflux/components/plane/selected_plane.dart';
import 'package:conflux/components/profile/greeting_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        PinnedHeaderSliver(
          child:
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.surface.withAlpha(200),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.withAlpha(50)),
                      ),
                    ),
                    child: GreetingTile(),
                  ),
                ),
              ).animate().slideY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
              ),
        ),
        SliverFillRemaining(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            runAlignment: WrapAlignment.end,
            children: [ConfluxCard(), SelectedPlane()],
          ),
        ),
      ],
    );
  }
}
