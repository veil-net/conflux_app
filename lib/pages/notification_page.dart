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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: AppBackground()),
            CustomScrollView(
              slivers: [
                if (notifications.isLoading)
                  SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                if (notifications.hasError)
                  SliverFillRemaining(
                    child: Center(
                      child: TextButton(
                        onPressed: () => ref.invalidate(notificationsProvider),
                        child: Text(
                          'Failed to load notifications, retry',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (notifications.hasValue && notifications.value!.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Wrap(
                      children: [
                        for (var notification in notifications.value!)
                          NotificationTile(notification: notification),
                      ],
                    ),
                  ),
                if (notifications.hasValue && notifications.value!.isEmpty)
                  SliverFillRemaining(
                    child: Center(
                      child: Text('No notifications found', style: TextStyle(color: Colors.grey),
                      ),
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
}
