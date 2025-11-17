import 'package:conflux/components/notification/notification_navigation_tile.dart';
import 'package:conflux/components/team/team_invitation_navigation_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppSubNavigationBar extends HookConsumerWidget {
  const AppSubNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: Wrap(
        children: [
          NotificationNavigationTile(),
          TeamInvitationNavigationTile(),
        ],
      ),
    );
  }
}
