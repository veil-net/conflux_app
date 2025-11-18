import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/components/org/organisation_tile.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/organisation_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class OrganisationList extends HookConsumerWidget {
  const OrganisationList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final organisations = ref.watch(organisationsProvider);

    Future<void> manageOrganisations() async {
      try {
        final session = supabase.auth.currentSession;
        if (session != null) {
          launchUrl(Uri.parse('https://auth.veilnet.app/organisation#refresh_token=${session.refreshToken}'));
        } else {
          launchUrl(Uri.parse('https://auth.veilnet.app/organisation'));
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: ExpansionTile(
        title: Text(
          'Your Organisations & Teams',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        initiallyExpanded: true,
        tilePadding: EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        showTrailingIcon: false,
        children: [
          organisations.when(
            data: (data) => Wrap(
              children: [
                for (var organisation in data)
                  OrganisationTile(organisation: organisation),
              ],
            ),
            error: (error, stackTrace) => Center(
              child: TextButton(
                onPressed: () => ref.invalidate(organisationsProvider),
                child: Text(
                  'Failed to load organisations, retry',
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ),
            loading: () => Center(child: LinearProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AppButton(
              expand: true,
              outline: true,
              label: 'Manage Organisations & Teams',
              onPressed: manageOrganisations,
            ),
          ),
        ],
      ),
    );
  }
}
