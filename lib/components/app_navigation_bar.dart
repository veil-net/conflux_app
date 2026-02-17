import 'package:conflux/providers/page_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppNavigationBar extends HookConsumerWidget {
  const AppNavigationBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    final selectedIndex = ref.watch(currentPageIndexProvider);
    return NavigationBar(
      selectedIndex: selectedIndex.clamp(0, 2),
      onDestinationSelected: (index) {
        ref.read(currentPageIndexProvider.notifier).setIndex(index);
        pageController.jumpToPage(index);
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.cyclone), label: 'Conflux'),
        NavigationDestination(icon: Icon(Icons.public), label: 'Realm'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
