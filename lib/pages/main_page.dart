import 'dart:io';

import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_bottom_navigation_bar.dart';
import 'package:conflux/components/app_status_background.dart';
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
      body: Stack(
        children: [
          Positioned.fill(child: AppBackground()),
          Positioned.fill(child: AppStatusBackground()),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                ref.read(currentPageProvider.notifier).setPage(index);
              },
              physics: const NeverScrollableScrollPhysics(),
              children: [HomeView(), PlaneView(), SettingView()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Platform.isAndroid || Platform.isIOS
          ? AppBottomNavigationBar()
          : AppBottomNavigationBar(),
    );
  }
}
