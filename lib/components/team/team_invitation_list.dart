import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/team/team_invitation_tile.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamInvitationList extends HookConsumerWidget {
  const TeamInvitationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamInvitations = ref.watch(teamInvitationsProvider);
    final user = ref.watch(currentUserProvider);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: ExpansionTile(
          title: Text(
            'Received Team Invitations',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          initiallyExpanded: true,
          tilePadding: EdgeInsets.symmetric(horizontal: 16),
          childrenPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          children: [
            teamInvitations.when(
              data: (data) {
                final receivedInvitations = data
                    .where(
                      (element) =>
                          element.invited_user == user?.id, 
                    )
                    .toList();
                if (receivedInvitations.isEmpty) {
                  return Center(
                    child: Text(
                      'No team invitations found',
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                }
                return Wrap(
                  children: [
                    for (var teamInvitation in receivedInvitations)
                      TeamInvitationTile(
                        teamInvitation: teamInvitation,
                      ),
                  ],
                );
              },
              error: (error, stackTrace) => Center(
                child: TextButton(
                  onPressed: () =>
                      ref.invalidate(teamInvitationsProvider),
                  child: Text(
                    'Failed to load team invitations, retry',
                    style: TextStyle(
                      color: Theme.of(
                        context,
                      ).colorScheme.error,
                    ),
                  ),
                ),
              ),
              loading: () =>
                  Center(child: LinearProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
