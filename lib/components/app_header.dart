import 'dart:io';
import 'dart:ui';

import 'package:conflux/components/app_header_navigation_bar.dart';
import 'package:conflux/components/profile/greeting_tile.dart';
import 'package:conflux/components/subscription/access_time_tile.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeader extends HookConsumerWidget {
  final bool innerBoxIsScrolled;
  const AppHeader({super.key, required this.innerBoxIsScrolled});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        backgroundColor: Theme.of(context).colorScheme.surface.withAlpha(200),
        surfaceTintColor: Colors.transparent,
        title: AppHeaderTitle(),
        floating: true,
        snap: true,
        centerTitle: true,
        expandedHeight:
            MediaQuery.of(context).orientation == Orientation.portrait
            ? 320
            : (Platform.isAndroid || Platform.isIOS)
            ? kToolbarHeight
            : 320,
        flexibleSpace:
            MediaQuery.of(context).orientation == Orientation.portrait
            ? AppHeaderSpaceBar()
            : (Platform.isAndroid || Platform.isIOS)
            ? null
            : AppHeaderSpaceBar(),
        bottom: const AppHeaderNavigationBar(),
      ),
    );
  }
}

class AppHeaderSpaceBar extends HookConsumerWidget {
  const AppHeaderSpaceBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    return FlexibleSpaceBar(
      background: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            gradient: LinearGradient(
              colors: [
                veilNetState == VeilNetState.disconnected
                    ? Colors.red.withAlpha(50)
                    : Colors.green.withAlpha(50),
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: GreetingTile(),
                ),
                AccessTimeTile().animate().slideX(
                  duration: 500.milliseconds,
                  curve: Curves.easeInOut,
                ),
                SizedBox(height: kToolbarHeight + 16),
              ],
            ),
          ),
        ),
      ),
      centerTitle: true,
    );
  }
}

class AppHeaderTitle extends HookConsumerWidget {
  const AppHeaderTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: switch (veilNetState) {
          VeilNetState.connected => Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock, color: Colors.green),
              Text(
                'You are protected',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.green),
              ),
            ],
          ),
          VeilNetState.disconnected => Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock_open, color: Colors.red),
              Text(
                'You are unprotected',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.red),
              ),
            ],
          ),
          VeilNetState.connecting => Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Text(
                'Connecting...',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.grey),
              ),
            ],
          ),
          VeilNetState.disconnecting => Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Text(
                'Disconnecting...',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.grey),
              ),
            ],
          ),
          VeilNetState.error => TextButton(
            onPressed: () async {
              ref.invalidate(veilNetProvider);
            },
            child: Text(
              'Failed to load VeilNet state, retry',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.grey),
            ),
          ),
        },
      ),
    );
  }
}
