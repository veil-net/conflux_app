import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/team.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamTitle extends HookConsumerWidget {
  final Team team;
  const TeamTitle({super.key, required this.team});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    team.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  subtitle: Text(
                    team.email ?? 'No email provided',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  trailing: currentUser?.id == team.user_id ? AppButton(
                    label: 'Manage',
                    onPressed: () async {
                      // TODO: Implement edit team
                    },
                  ) : AppButton(
                    label: 'Leave',
                    onPressed: () async {
                      // TODO: Implement join team
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
