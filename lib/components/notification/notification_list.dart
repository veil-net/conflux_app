import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/notification/notification_tile.dart';
import 'package:conflux/providers/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationList extends HookConsumerWidget {
  const NotificationList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: ExpansionTile(
          title: Text(
            'Notifications',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          subtitle: Text(
            'Messages regarding the VeilNet infrastructure status and other related information.',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          initiallyExpanded: true,
          showTrailingIcon: false,
          tilePadding: EdgeInsets.symmetric(horizontal: 16),
          childrenPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          children: [
            notifications.when(
              data: (data) => Wrap(
                children: [
                  for (var notification in data)
                    NotificationTile(notification: notification),
                ],
              ),
              error: (error, stackTrace) => Center(
                child: TextButton(
                  onPressed: () => ref.invalidate(notificationsProvider),
                  child: Text(
                    'Failed to load notifications, retry',
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
