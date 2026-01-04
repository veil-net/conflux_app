import 'package:conflux/providers/page_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBottomNavigationBar extends HookConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentPageProvider);
    final pageController = ref.watch(pageControllerProvider);
    return NavigationBar(
      elevation: 5,
      backgroundColor: Theme.of(context).colorScheme.surface,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        ref.read(currentPageProvider.notifier).setPage(index);
        pageController.jumpToPage(index);
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.language), label: 'Realms'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
