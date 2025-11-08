import 'dart:ui';

import 'package:conflux/components/app_button.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeaderNavigationBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const AppHeaderNavigationBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withAlpha(200),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            border: Border(
              bottom: BorderSide(color: Colors.grey.withAlpha(50)),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/icon/icon.png'),
            ),
            title: Text(
              'VeilNet Conflux',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            actions: [
              AppButton(label: 'Home', onPressed: () async{
                ref.read(pageControllerProvider).jumpToPage(0);
              }),
              AppButton(label: 'Planes', onPressed: () async{
                ref.read(pageControllerProvider).jumpToPage(1);
              }),
              AppButton(label: 'Settings', onPressed: () async{
                ref.read(pageControllerProvider).jumpToPage(2);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
