import 'package:conflux/components/app_navigation_bar.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/views/conflux_view.dart';
import 'package:conflux/views/realm_view.dart';
import 'package:conflux/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            ref.read(currentPageIndexProvider.notifier).setIndex(index);
          },
          children: [
            ConfluxView(),
            RealmView(),
            SettingsView(),
          ],
        )
      ),
      bottomNavigationBar: AppNavigationBar(),
    );
  }
}
