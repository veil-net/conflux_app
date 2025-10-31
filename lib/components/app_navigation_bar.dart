import 'dart:ui';

import 'package:conflux/providers/page_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppNavigationBar extends HookConsumerWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentPageProvider);
    final pageController = ref.watch(pageControllerProvider);
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withAlpha(100),
              ),
            ),
          ),
          child: NavigationBar(
            elevation: 5,
            height: kToolbarHeight * 2,
            selectedIndex: currentIndex,
            backgroundColor: Colors.transparent,
            onDestinationSelected: (index) {
              ref.read(currentPageProvider.notifier).setPage(index);
              pageController.jumpToPage(index);
            },
            indicatorColor: Theme.of(
              context,
            ).colorScheme.primary.withAlpha(150),
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                icon: Icon(Icons.language),
                label: 'Planes',
              ),
              NavigationDestination(icon: Icon(Icons.people), label: 'Team'),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
