import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_bottom_navigation_bar.dart';
import 'package:conflux/components/app_status_background.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/views/home_view.dart';
import 'package:conflux/views/plane_view.dart';
import 'package:conflux/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    useEffect(() {
      Future.microtask(() async {
        if (user == null) {
          if (context.mounted) {
            context.go('/auth');
          }
        }
      });
      return null;
    }, [user]);

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
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
