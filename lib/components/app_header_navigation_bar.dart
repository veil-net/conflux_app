import 'package:conflux/components/app_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeaderNavigationBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const AppHeaderNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(height: kToolbarHeight + 16, child: AppNavigationBar());
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 16);
}
