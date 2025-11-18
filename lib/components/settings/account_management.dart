import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/current_session_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountManagement extends HookConsumerWidget {
  const AccountManagement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilnetState = ref.watch(veilNetProvider);
    final session = ref.watch(currentSessionProvider);
    Future<void> switchAccount() async {
      if (veilnetState != VeilNetState.disconnected) {
        if (context.mounted) {
          DialogManager.showDialog(
            context,
            'Please disconnect from VeilNet to switch accounts',
            DialogType.error,
          );
        }
      }
      try {
        await supabase.auth.signOut();
        if (context.mounted) {
          context.go('/auth');
        }
      } on AuthException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.message, DialogType.error);
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> manageAccount() async {
      try {
        final session = supabase.auth.currentSession;
        if (session != null) {
          launchUrl(Uri.parse('https://auth.veilnet.app/subscribe#refresh_token=${session.refreshToken}'));
        } else {
          launchUrl(Uri.parse('https://auth.veilnet.app/subscribe'));
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> resetPassword() async {
      try {
        final session = supabase.auth.currentSession;
        if (session != null) {
          launchUrl(Uri.parse('https://auth.veilnet.app/reset-password#refresh_token=${session.refreshToken}'));
        } else {
          launchUrl(Uri.parse('https://auth.veilnet.app/reset-password'));
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: AppCard(
              child: ExpansionTile(
                tilePadding: EdgeInsets.symmetric(horizontal: 16),
                childrenPadding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                initiallyExpanded: true,
                title: Text(
                  'Account Management',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                children: [
                  ListTile(
                    dense: true,
                    onTap: resetPassword,
                    title: Text(
                      'Change Password',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: Icon(Icons.open_in_new),
                  ),
                  ListTile(
                    dense: true,
                    onTap: manageAccount,
                    title: Text(
                      'Manage Account',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: Icon(Icons.open_in_new),
                  ),
                  ListTile(
                    dense: true,
                    onTap: switchAccount,
                    title: Text(
                      'Switch Account',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: Icon(Icons.open_in_new),
                  ),
                ],
              ),
            ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
