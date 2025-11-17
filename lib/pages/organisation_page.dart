import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/org/organisation_list.dart';
import 'package:conflux/components/team/team_invitation_tile.dart';
import 'package:conflux/models/team_invitation.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganisationPage extends HookConsumerWidget {
  const OrganisationPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final teamInvitations = ref.watch(teamInvitationsProvider);
    final receivedInvitations = useState<List<TeamInvitation>>([]);
    useEffect(() {
      receivedInvitations.value =
          teamInvitations.value
              ?.where((element) => element.invited_user == user?.id)
              .toList() ??
          [];
      return null;
    }, [teamInvitations]);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: AppBackground()),
            CustomScrollView(
              slivers: [
                PinnedHeaderSliver(child: OrganisationList()),
                if (teamInvitations.isLoading)
                  SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                if (teamInvitations.hasError)
                  SliverFillRemaining(
                    child: Center(
                      child: TextButton(
                        onPressed: () =>
                            ref.invalidate(teamInvitationsProvider),
                        child: Text(
                          'Failed to load team invitations, retry',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (teamInvitations.hasValue &&
                    receivedInvitations.value.isNotEmpty)
                  SliverToBoxAdapter(
                    child: AppCard(
                      child: ExpansionTile(
                        title: Text(
                          'Received Team Invitations',
                          style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        ),
                        initiallyExpanded: true,
                        tilePadding: EdgeInsets.symmetric(horizontal: 16),
                        childrenPadding: EdgeInsets.symmetric(horizontal: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        showTrailingIcon: false,
                        children: [
                          Wrap(
                            children: [
                              for (var teamInvitation in receivedInvitations.value)
                                TeamInvitationTile(teamInvitation: teamInvitation),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                if (teamInvitations.hasValue &&
                    receivedInvitations.value.isEmpty)
                  SliverFillRemaining(
                    child: Center(
                      child: Text(
                        'No team invitations found',
                        style: TextStyle(color: Colors.grey),
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
