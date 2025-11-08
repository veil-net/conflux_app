import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/conflux_details_provider.dart';
import 'package:conflux/providers/current_session_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfluxSummaryCard extends HookConsumerWidget {
  const ConfluxSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final developerMode = ref.watch(developerModeProvider);

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              Row(
                spacing: 16,
                children: [PortalSummaryTitle(), RiftSummaryTitle()],
              ),
              if (developerMode)
                AppButton(
                  label: 'Manage Conflux',
                  onPressed: () async {
                    final session = ref.watch(currentSessionProvider);
                    if (session != null) {
                      launchUrl(
                        Uri.parse(
                          'https://auth.veilnet.app/deploy?refresh_token=${session.refreshToken}',
                        ),
                      );
                    }
                  },
                  expand: true,
                  outline: true,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class RiftSummaryTitle extends HookConsumerWidget {
  const RiftSummaryTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxRifts = ref.watch(confluxRiftsDetailsProvider);
    return Flexible(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.electric_bolt),
        title: Text(
          '${confluxRifts.value?.where((conflux) => conflux.signature != null).length} / ${confluxRifts.value?.length}',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        subtitle: Text(
          'Rifts',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}

class PortalSummaryTitle extends HookConsumerWidget {
  const PortalSummaryTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxPortals = ref.watch(confluxPortalsDetailsProvider);
    return Flexible(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.cyclone),
        title: Text(
          '${confluxPortals.value?.where((conflux) => conflux.signature != null).length} / ${confluxPortals.value?.length}',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        subtitle: Text(
          'Portals',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
