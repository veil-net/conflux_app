import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfluxSummaryCard extends HookConsumerWidget {
  const ConfluxSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final developerMode = ref.watch(developerModeProvider);

    Future<void> manageConflux() async {
      try {
        launchUrl(Uri.parse('https://console.veilnet.app'));
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

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
                  onPressed: manageConflux,
                  expand: true,
                  outline: true,
                ),
            ],
          ),
        ),
      ),
    ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut);
  }
}

class RiftSummaryTitle extends HookConsumerWidget {
  const RiftSummaryTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxRifts = ref.watch(confluxRiftsProvider);
    final numberOfOnlineRifts = useState(0);

    useEffect(() {
      numberOfOnlineRifts.value =
          confluxRifts.value
              ?.where((conflux) => conflux.signature != null)
              .length ??
          0;
      return null;
    }, [confluxRifts.value]);

    return Flexible(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.electric_bolt),
        title: Text(
          '${numberOfOnlineRifts.value} / ${confluxRifts.value?.length} Online',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        subtitle: Text(
          'Your Rifts',
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
    final confluxPortals = ref.watch(confluxPortalsProvider);
    final numberOfOnlinePortals = useState(0);

    useEffect(() {
      numberOfOnlinePortals.value =
          confluxPortals.value
              ?.where((conflux) => conflux.signature != null)
              .length ??
          0;
      return null;
    }, [confluxPortals.value]);

    return Flexible(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.cyclone),
        title: Text(
          '${numberOfOnlinePortals.value} / ${confluxPortals.value?.length} Online',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        subtitle: Text(
          'Your Portals',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
