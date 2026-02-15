import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedRealm extends HookConsumerWidget {
  const SelectedRealm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRealm = ref.watch(selectedRealmProvider);
    final veilNetState = ref.watch(veilNetProvider);
    ref.watch(confluxServiceProvider);

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: selectedRealm.when(
          data: (realm) {
            if (realm == null) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'VeilNet Realms',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' are decentralised networks that secure and masquade your traffic to the internet.\n\n',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: 'Select a Realm to get started',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    AppButton(
                      label: 'Select a Realm',
                      onPressed: () async {
                        ref.read(pageControllerProvider).jumpToPage(1);
                      },
                      expand: true,
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: SizedBox(
                        width: 40,
                        height: 30,
                        child: CountryFlag.fromCountryCode(realm.region),
                      ),
                      title: Text(
                        realm.name,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      subtitle: Text(
                        realm.subnet,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      trailing: veilNetState == VeilNetState.disconnected
                          ? AppButton(
                              outline: true,
                              label: 'Change',
                              onPressed: () async {
                                ref.read(pageControllerProvider).jumpToPage(1);
                              },
                            )
                          : null,
                    ),
                    switch (veilNetState) {
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
                        onPressed: () async {
                          try {
                            await ref
                                .read(veilNetProvider.notifier)
                                .connect(realm);
                          } on DioException catch (e) {
                            if (context.mounted) {
                              DialogManager.showDialog(
                                context,
                                'Failed to connect to VeilNet: ${e.response?.data['detail']}',
                                DialogType.error,
                              );
                            }
                          } on Exception catch (e) {
                            if (context.mounted) {
                              DialogManager.showDialog(
                                context,
                                'Failed to connect to VeilNet: $e',
                                DialogType.error,
                              );
                            }
                          }
                        },
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
                      VeilNetState.loading => AppButton(
                        label: 'Loading...',
                        onPressed: null,
                        expand: true,
                        outline: true,
                      ),
                      VeilNetState.error => TextButton(
                        onPressed: () async {
                          ref.invalidate(veilNetProvider);
                        },
                        child: Text('Failed to load VeilNet state, retry'),
                      ),
                    },
                  ],
                ),
              );
            }
          },
          error: (error, stackTrace) => Center(
            child: TextButton(
              onPressed: () {
                ref.invalidate(selectedRealmProvider);
              },
              child: Text(
                'Failed to load selected realm, retry',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          ),
          loading: () => Padding(
            padding: const EdgeInsets.all(16.0),
            child: LinearProgressIndicator(),
          ),
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
