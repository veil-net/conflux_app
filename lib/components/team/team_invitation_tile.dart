import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/team_invitation.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamInvitationTile extends HookConsumerWidget {
  final TeamInvitation invitation;
  const TeamInvitationTile({super.key, required this.invitation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);

    if (currentUser?.id == invitation.user_id) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth:
                  MediaQuery.of(context).orientation == Orientation.portrait
                  ? constraints.maxWidth
                  : constraints.maxWidth * 0.5,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: ListTile(
                title: Text(
                  invitation.invited_user_email,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                subtitle: Text(
                  'has been invited to join ${invitation.team_name}',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () async {
                    await ref
                        .read(teamInvitationsProvider.notifier)
                        .cancelInvitation(invitation.id);
                  },
                  child: Text(
                    'cancel',
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    if (currentUser?.id == invitation.invited_user) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth:
                  MediaQuery.of(context).orientation == Orientation.portrait
                  ? constraints.maxWidth
                  : constraints.maxWidth * 0.5,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: AppCard(
                child: ListTile(
                  title: Text(invitation.user_email),
                  subtitle: Text(
                    'has invited you to join ${invitation.team_name}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.check),
                        onPressed: () async {
                          await ref
                              .read(teamInvitationsProvider.notifier)
                              .acceptInvitation(invitation.id);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () async {
                          await ref
                              .read(teamInvitationsProvider.notifier)
                              .rejectInvitation(invitation.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    return const SizedBox.shrink();
  }
}
