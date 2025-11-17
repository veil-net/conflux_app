import 'package:conflux/components/app_card.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:conflux/models/notification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationTile extends HookConsumerWidget {
  final Notification notification;
  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1000,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: AppCard(
              child: ExpansionTile(
                tilePadding: EdgeInsets.symmetric(horizontal: 16),
                childrenPadding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                leading: switch (notification.type) {
                  'info' => Icon(Icons.info, color: Colors.blue),
                  'warning' => Icon(Icons.warning, color: Colors.yellow),
                  'error' => Icon(Icons.error, color: Colors.red),
                  _ => Icon(Icons.info, color: Colors.blue),
                },
                title: Text(notification.title, style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                subtitle: Text(notification.created_at.toLocal().toString(), style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                children: [Text(notification.message)],
              ),
            ),
          ),
        );
      },
    );
  }
}
