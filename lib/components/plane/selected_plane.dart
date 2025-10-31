import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/current_session_provider.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:conflux/providers/service_tier_provider.dart';
import 'package:conflux/providers/user_profile_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class SelectedPlane extends HookConsumerWidget {
  const SelectedPlane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlane = ref.watch(selectedPlaneDetailsProvider);
    final veilNetState = ref.watch(veilNetProvider);
    ref.watch(confluxServiceProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: AppCard(
              child: selectedPlane.when(
                data: (plane) {
                  if (plane == null) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 16,
                        children: [
                          Icon(
                            Icons.info,
                            size: 32,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'VeilNet Planes',
                                  style: Theme.of(context).textTheme.bodyLarge
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      ' are regional decentralised networks, which will secure and masquade your traffic to the internet.\n\n',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Colors.grey),
                                ),
                                TextSpan(
                                  text: 'Select a Plane to get started',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          AppButton(
                            label: 'Select a Plane',
                            onPressed: () async {
                              ref.read(pageControllerProvider).jumpToPage(1);
                            },
                            expand: true,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Text(
                            plane.region.toFlag,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          title: Text(
                            plane.name,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primary,
                                ),
                          ),
                          subtitle: Text(
                            plane.subnet,
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                ),
                          ),
                          trailing: veilNetState == VeilNetState.disconnected
                              ? AppButton(
                                  outline: true,
                                  label: 'Change',
                                  onPressed: () async {
                                    ref
                                        .read(pageControllerProvider)
                                        .jumpToPage(1);
                                  },
                                )
                              : null,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: switch (veilNetState) {
                            VeilNetState.connected => AppButton(
                              label: 'Disconnect',
                              onPressed: () async {
                                try {
                                  await ref
                                      .read(veilNetProvider.notifier)
                                      .disconnect();
                                } catch (e) {
                                  if (context.mounted) {
                                    DialogManager.showDialog(
                                      context,
                                      'Failed to disconnect from VeilNet: $e',
                                      DialogType.error,
                                    );
                                  }
                                }
                              },
                              expand: true,
                              outline: true,
                            ),
                            VeilNetState.disconnected => AppButton(
                              label: 'Connect',
                              onPressed: plane.portals > 0
                                  ? () async {
                                      try {
                                        final resp = await supabase.rpc(
                                          'count_user_public_rifts',
                                          params: {'uid': plane.user_id},
                                        );
                                        final count = (resp as num).toInt();
                                        final serviceTier = await ref.read(
                                          serviceTierProvider.future,
                                        );
                                        final userProfile = await ref.read(
                                          userProfileProvider.future,
                                        );
                                        switch (serviceTier) {
                                          case 0:
                                            if (userProfile.mp < 0) {
                                              launchUrl(
                                                Uri.parse(
                                                  'https://auth.veilnet.app/subscription?refresh_token=${ref.read(currentSessionProvider)?.refreshToken}',
                                                ),
                                              );
                                            }
                                            break;
                                          case 1:
                                            if (count >= 3) {
                                              throw Exception(
                                                'You can not connect more than 3 devices at the same time.',
                                              );
                                            }
                                            break;
                                          case 2:
                                            if (count >= 10) {
                                              throw Exception(
                                                'You can not connect more than 10 devices at the same time.',
                                              );
                                            }
                                            break;
                                          default:
                                            throw Exception(
                                              'Invalid service tier',
                                            );
                                        }
                                        await ref
                                            .read(veilNetProvider.notifier)
                                            .connect(plane);
                                      } catch (e) {
                                        if (context.mounted) {
                                          DialogManager.showDialog(
                                            context,
                                            'Failed to connect to VeilNet: $e',
                                            DialogType.error,
                                          );
                                        }
                                      }
                                    }
                                  : null,
                              expand: true,
                              outline: false,
                            ),
                            VeilNetState.connecting => AppButton(
                              label: 'Connecting...',
                              onPressed: null,
                              expand: true,
                              outline: true,
                            ),
                            VeilNetState.disconnecting => AppButton(
                              label: 'Disconnecting...',
                              onPressed: null,
                              expand: true,
                              outline: true,
                            ),
                            VeilNetState.error => TextButton(
                              onPressed: () async {
                                ref.invalidate(veilNetProvider);
                              },
                              child: Text(
                                'Failed to load VeilNet state, retry',
                              ),
                            ),
                          },
                        ),
                      ],
                    );
                  }
                },
                error: (error, stackTrace) => Text('Error: $error'),
                loading: () => SizedBox.shrink(),
              ),
            ).animate().slideY(duration: 500.milliseconds, curve: Curves.easeInOut),
          ),
        );
      },
    );
  }
}

extension convertFlag on String {
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );
  }
}
