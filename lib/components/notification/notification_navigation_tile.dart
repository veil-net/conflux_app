import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationNavigationTile extends HookConsumerWidget {
  const NotificationNavigationTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);
    final numNotifications = useState(0);
    useEffect(() {
      numNotifications.value = notifications.value?.length ?? 0;
      return null;
    }, [notifications]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : 500 < constraints.maxWidth * 0.5
                ? 500
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              leading: Badge(
                label: Text(numNotifications.value.toString()),
                child: Icon(Icons.notifications),
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: Text(
                'View all notifications from VeilNet',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.push("/notification");
              },
            ),
          ),
        );
      },
    );
  }
}
