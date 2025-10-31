import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/team/team_invitation_tile.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamInvitationList extends HookConsumerWidget {
  const TeamInvitationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamInvitations = ref.watch(teamInvitationsProvider);
    final currentUser = ref.watch(currentUserProvider);
    final expandedPanels = useState<List<bool>>([false, false]);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppCard(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                final newExpanded = List<bool>.from(expandedPanels.value);
                newExpanded[index] = !newExpanded[index];
                expandedPanels.value = newExpanded;
              },
              elevation: 0,
              dividerColor: Colors.transparent,
              materialGapSize: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              children: [
                ExpansionPanel(
                  isExpanded: expandedPanels.value[0],
                  headerBuilder: (context, isExpanded) => Text(
                    'Received Invitations',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  body: teamInvitations.when(
                    data: (data) {
                      final receivedInvitations = data
                          .where(
                            (invitation) =>
                                invitation.invited_user == currentUser?.id,
                          )
                          .toList();
                      if (receivedInvitations.isEmpty) {
                        return Center(
                          child: Text(
                            'No invitations received',
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primary,
                                ),
                          ),
                        );
                      }
                      return Wrap(
                        children: receivedInvitations
                            .map(
                              (invitation) =>
                                  TeamInvitationTile(invitation: invitation),
                            )
                            .toList(),
                      );
                    },
                    error: (error, stackTrace) => TextButton(
                      onPressed: () => ref.invalidate(teamInvitationsProvider),
                      child: Text(
                        'Failed to load invitations, retry',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: expandedPanels.value[1],
                  headerBuilder: (context, isExpanded) => Text(
                    'Sent Invitations',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  body: teamInvitations.when(
                    data: (data) {
                      final sentInvitations = data
                          .where(
                            (invitation) =>
                                invitation.user_id == currentUser?.id,
                          )
                          .toList();
                      if (sentInvitations.isEmpty) {
                        return Center(
                          child: Text(
                            'No invitations sent',
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        );
                      }
                      return Wrap(
                        children: sentInvitations
                            .map(
                              (invitation) =>
                                  TeamInvitationTile(invitation: invitation),
                            )
                            .toList(),
                      );
                    },
                    error: (error, stackTrace) => TextButton(
                      onPressed: () => ref.invalidate(teamInvitationsProvider),
                      child: Text(
                        'Failed to load invitations, retry',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
