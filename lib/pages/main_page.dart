import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_bottom_navigation_bar.dart';
import 'package:conflux/components/app_header_navigation_bar.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/views/home_view.dart';
import 'package:conflux/views/plane_view.dart';
import 'package:conflux/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      appBar: MediaQuery.of(context).orientation == Orientation.landscape
          ? AppHeaderNavigationBar()
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: AppBackground()),
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                ref.read(currentPageProvider.notifier).setPage(index);
              },
              physics: const NeverScrollableScrollPhysics(),
              children: [HomeView(), PlaneView(), SettingView()],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          MediaQuery.of(context).orientation == Orientation.portrait
          ? AppBottomNavigationBar()
          : null,
      drawer: MediaQuery.of(context).orientation == Orientation.landscape
          ? Drawer(
              child: Column(
                children: [
                  AppButton(
                    label: 'Home',
                    onPressed: () async {
                      ref.read(pageControllerProvider).jumpToPage(0);
                    },
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
