import 'dart:io';

import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/org/organisation_list.dart';
import 'package:conflux/components/team/team_invitation_list.dart';
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
    if (Platform.isAndroid || Platform.isIOS) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: AppBackground()),
              CustomScrollView(
                slivers: [
                  PinnedHeaderSliver(child: OrganisationList()),
                  SliverToBoxAdapter(child: TeamInvitationList()),
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

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: AppBackground()),
              Center(
                child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 500),
                        child: Column(
                          spacing: 16,
                          children: [OrganisationList()],
                        ),
                      ),
                      TeamInvitationList(),
                    ],
                  ),
                ),
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
    return Center(child: Text('Unsupported platform'));
  }
}
