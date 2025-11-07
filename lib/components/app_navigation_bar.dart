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
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.withAlpha(50)),
            ),
          ),
          child: NavigationBar(
            elevation: 5,
            selectedIndex: currentIndex,
            backgroundColor: Theme.of(context).colorScheme.surface.withAlpha(200),
            onDestinationSelected: (index) {
              ref.read(currentPageProvider.notifier).setPage(index);
              pageController.jumpToPage(index);
            },
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                icon: Icon(Icons.language),
                label: 'Planes',
              ),
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
