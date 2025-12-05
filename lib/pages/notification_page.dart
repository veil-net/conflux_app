import 'dart:io';

import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/notification/notification_tile.dart';
import 'package:conflux/providers/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);

    if (Platform.isAndroid || Platform.isIOS) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: AppBackground()),
              CustomScrollView(
                slivers: [
                  notifications.when(
                    data: (data) {
                      if (data.isEmpty) {
                        return SliverFillRemaining(
                          child: Center(
                            child: Text(
                              'No notifications found',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        );
                      }
                      return SliverList.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) =>
                            NotificationTile(notification: data[index]),
                      );
                    },
                    error: (error, stackTrace) => SliverFillRemaining(
                      child: Center(
                        child: TextButton(
                          onPressed: () =>
                              ref.invalidate(notificationsProvider),
                          child: Text(
                            'Failed to load notifications, retry',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),
                      ),
                    ),
                    loading: () => SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
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
              CustomScrollView(
                slivers: [
                  notifications.when(
                    data: (data) {
                      if (data.isEmpty) {
                        return SliverFillRemaining(
                          child: Center(
                            child: Text(
                              'No notifications found',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        );
                      }
                      return SliverList.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) =>
                            NotificationTile(notification: data[index]),
                      );
                    },
                    error: (error, stackTrace) => SliverFillRemaining(
                      child: Center(
                        child: TextButton(
                          onPressed: () =>
                              ref.invalidate(notificationsProvider),
                          child: Text('Failed to load notifications, retry'),
                        ),
                      ),
                    ),
                    loading: () => SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
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
    return Center(child: Text('Unsupported platform'));
  }
}
