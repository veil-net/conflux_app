import 'package:conflux/components/team/team_invitation_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamView extends HookConsumerWidget {
  const TeamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        TeamInvitationList(),
      ],
    );
  }
}
