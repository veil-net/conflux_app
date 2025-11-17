import 'dart:io';

import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/notification/notification_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid || Platform.isIOS) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: AppBackground()),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: NotificationList()),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: Icon(Icons.keyboard_arrow_left),
        ),
      );
    }
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: AppBackground()),
              Center(
                child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 1000),
                        child: Column(children: [NotificationList()]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: Icon(Icons.keyboard_arrow_left),
        ),
      );
    }
    return Center(child: Text('Unsupported platform'));
  }
}
