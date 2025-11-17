import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamInvitationNavigationTile extends HookConsumerWidget {
  const TeamInvitationNavigationTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final teamInvitations = ref.watch(teamInvitationsProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: constraints.maxWidth * 0.5 < 500
                ? 500
                : constraints.maxWidth * 0.5,
          ),
          child:
              AppCard(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  leading: Badge(
                    label: Text(
                      teamInvitations.value
                              ?.where(
                                (element) =>
                                    element.invited_user == user?.id &&
                                    element.status == 'pending',
                              )
                              .length
                              .toString() ??
                          '0',
                    ),
                    isLabelVisible:
                        teamInvitations.value
                            ?.where(
                              (element) =>
                                  element.invited_user == user?.id &&
                                  element.status == 'pending',
                            )
                            .isNotEmpty ??
                        false,
                    child: Icon(Icons.group),
                  ),
                  title: Text(
                    'Team Invitations',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  subtitle: Text(
                    'Accept or reject team invitations',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  trailing: teamInvitations.isLoading
                      ? const CircularProgressIndicator.adaptive()
                      : teamInvitations.hasError
                      ? const Icon(Icons.refresh, color: Colors.red)
                      : const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    if (teamInvitations.hasError) {
                      ref.invalidate(teamInvitationsProvider);
                    } else {
                      context.push("/organisation");
                    }
                  },
                ),
              ).animate().slideY(
                duration: 250.milliseconds,
                curve: Curves.easeInOut,
              ),
        );
      },
    );
  }
}
