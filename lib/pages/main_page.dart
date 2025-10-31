import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_header.dart';
import 'package:conflux/providers/app_bar_collapsed_provider.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/views/home_view.dart';
import 'package:conflux/views/plane_view.dart';
import 'package:conflux/views/setting_view.dart';
import 'package:conflux/views/team_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: AppBackground()),
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                Future.microtask(() {
                  ref.read(appBarCollapsedProvider.notifier).setCollapsed(innerBoxIsScrolled);
                });
                return [
                  AppHeader(innerBoxIsScrolled: innerBoxIsScrolled),
                ];
              },
              body: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  ref.read(currentPageProvider.notifier).setPage(index);
                },
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  HomeView(),
                  PlaneView(),
                  TeamView(),
                  SettingView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
