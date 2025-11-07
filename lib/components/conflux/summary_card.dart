import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/conflux_details_provider.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/current_session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfluxSummaryCard extends HookConsumerWidget {
  const ConfluxSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxRifts = ref.watch(confluxRiftsDetailsProvider);
    final confluxPortals = ref.watch(confluxPortalsDetailsProvider);

    final numberOfOnlineRifts = useState(0);
    final numberOfOnlinePortals = useState(0);
    final numberOfRifts = useState(0);
    final numberOfPortals = useState(0);
    useEffect(() {
      confluxRifts.when(
        data: (data) {
          numberOfOnlineRifts.value = data
              .where((conflux) => conflux.signature != null)
              .length;
          numberOfRifts.value = data.length;
        },
        error: (error, stackTrace) {
          numberOfRifts.value = 0;
          numberOfPortals.value = 0;
        },
        loading: () {
          numberOfOnlineRifts.value = 0;
          numberOfRifts.value = 0;
        },
      );
      confluxPortals.when(
        data: (data) {
          numberOfOnlinePortals.value = data
              .where((conflux) => conflux.signature != null)
              .length;
          numberOfPortals.value = data.length;
        },
        error: (error, stackTrace) {
          numberOfPortals.value = 0;
        },
        loading: () {
          numberOfOnlinePortals.value = 0;
        },
      );
      return null;
    }, [confluxRifts, confluxPortals]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16,
                children: [
                  Row(
                    spacing: 16,
                    children: [
                      Flexible(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.cyclone),
                          title: Text(
                            '${numberOfOnlinePortals.value} / ${numberOfPortals.value}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          subtitle: Text(
                            'Portals',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          trailing: confluxPortals.when(
                            data: (data) => IconButton(
                              onPressed: () {
                                DialogManager.showDialog(
                                  context,
                                  'VeilNet Conflux Portals are gateway from VeilNet to regular networks.\n\nSelf-hosting a VeilNet conflux portal will earn you credits to access VeilNet Public Plane.',
                                  DialogType.info,
                                );
                              },
                              icon: Icon(Icons.info_outline_rounded),
                            ),
                            error: (error, stackTrace) => IconButton(
                              onPressed: () {
                                ref.invalidate(confluxPortalsProvider);
                              },
                              icon: Icon(
                                Icons.refresh,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            loading: () => null,
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.electric_bolt),
                          title: Text(
                            '${numberOfOnlineRifts.value} / ${numberOfRifts.value}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          subtitle: Text(
                            'Rifts',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          trailing: confluxRifts.when(
                            data: (data) => IconButton(
                              onPressed: () {
                                DialogManager.showDialog(
                                  context,
                                  'VeilNet Conflux rifts forward all traffic from your device to VeilNet.\n\nConnecting a device with a rift will consume your credits if you don\'t have a subscription.',
                                  DialogType.info,
                                );
                              },
                              icon: Icon(Icons.info_outline_rounded),
                            ),
                            error: (error, stackTrace) => IconButton(
                              onPressed: () {
                                ref.invalidate(confluxRiftsProvider);
                              },
                              icon: Icon(
                                Icons.refresh,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            loading: () => null,
                          ),
                        ),
                      ),
                    ],
                  ),
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
          ).animate().slideY(duration: 500.milliseconds, curve: Curves.easeInOut),
        );
      },
    );
  }
}
