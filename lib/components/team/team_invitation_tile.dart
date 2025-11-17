import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/models/team_invitation.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/team_invitations_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamInvitationTile extends HookConsumerWidget {
  final TeamInvitation teamInvitation;
  const TeamInvitationTile({super.key, required this.teamInvitation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final sentInvitation = useState(false);
    final receivedInvitation = useState(false);

    final isLoading = useState(false);

    useEffect(() {
      if (teamInvitation.invited_user == user?.id) {
        receivedInvitation.value = true;
      }
      if (teamInvitation.user_id == user?.id) {
        sentInvitation.value = true;
      }

      return null;
    }, [user]);

    Future<void> cancelInvitation() async {
      try {
        await ref
            .read(teamInvitationsProvider.notifier)
            .cancelInvitation(teamInvitation.id);
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> acceptInvitation() async {
      isLoading.value = true;
      try {
        await ref
            .read(teamInvitationsProvider.notifier)
            .acceptInvitation(teamInvitation.id);
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      } finally {
        isLoading.value = false;
      }
    }

    Future<void> rejectInvitation() async {
      isLoading.value = true;
      try {
        await ref
            .read(teamInvitationsProvider.notifier)
            .rejectInvitation(teamInvitation.id);
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      } finally {
        isLoading.value = false;
      }
    }

    if (sentInvitation.value) {
      return AppCard(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          title: Text(
            'You have invited ${teamInvitation.invited_user_email} to join the team ${teamInvitation.team_name}',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          trailing: isLoading.value
              ? const CircularProgressIndicator.adaptive()
              : teamInvitation.status == 'pending'
              ? IconButton(
                  onPressed: cancelInvitation,
                  icon: Icon(Icons.cancel, color: Colors.red),
                )
              : Chip(
                  label: Text(
                    teamInvitation.status,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
        ),
      );
    }

    if (receivedInvitation.value) {
      return AppCard(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          title: Text(
            '${teamInvitation.user_email} has invited you to join ${teamInvitation.team_name}',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          trailing: isLoading.value
              ? const CircularProgressIndicator.adaptive()
              : teamInvitation.status == 'pending'
              ? Row(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: rejectInvitation,
                      icon: Icon(Icons.cancel, color: Colors.red),
                    ),
                    IconButton(
                      onPressed: acceptInvitation,
                      icon: Icon(Icons.check_circle, color: Colors.green),
                    ),
                  ],
                )
              : Chip(
                  label: Text(
                    teamInvitation.status,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
