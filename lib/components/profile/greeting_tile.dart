import 'dart:async';

import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/components/app_text_input.dart';
import 'package:conflux/components/profile/service_tier_chip.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/service_tier_provider.dart';
import 'package:conflux/providers/user_profile_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreetingTile extends HookConsumerWidget {
  const GreetingTile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfile = ref.watch(userProfileProvider);
    final userMP = ref.watch(userMPProvider);
    final displayName = useTextEditingController();
    final serviceTier = ref.watch(serviceTierProvider);
    final confluxRifts = ref.watch(confluxRiftsProvider);
    final veilnetState = ref.watch(veilNetProvider);

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 5), (timer) {
        ref.invalidate(userMPProvider);
      });
      return () => timer.cancel();
    }, []);

    Future<void> setDsiplayName() async {
      if (displayName.text.isEmpty) {
        if (context.mounted) {
          DialogManager.showDialog(
            context,
            'Please enter a display name',
            DialogType.error,
          );
        }
      }
      try {
        final api = ref.watch(apiProvider);
        await api.patch(
          '/auth/profile/display-name',
          data: {'display_name': displayName.text},
        );
        ref.invalidate(userProfileProvider);
      } on DioException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(
            context,
            e.response?.data['message'],
            DialogType.error,
          );
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> signOut() async {
      try {
        if (veilnetState != VeilNetState.disconnected) {
          if (context.mounted) {
            DialogManager.showDialog(
              context,
              'Please disconnect from VeilNet to sign out',
              DialogType.error,
            );
          }
          return;
        }
        await supabase.auth.signOut();
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: Wrap(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth:
                        MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? constraints.maxWidth
                        : constraints.maxWidth * 0.5,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    leading: Icon(Icons.person),
                    subtitle: Text(
                      userProfile.value?.email ?? 'Email not set',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    title: userProfile.value?.display_name != null
                        ? Text(
                            'Hi, ${userProfile.value!.display_name!}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        : AppTextInput(
                            label: 'Display Name',
                            hint: 'Set your display name',
                            controller: displayName,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icons.person,
                            obscureText: false,
                            readOnly: false,
                            enable: true,
                          ),
                    trailing: userProfile.value?.display_name != null
                        ? ServiceTierChip()
                        : TextButton(
                            onPressed: () {
                              setDsiplayName();
                            },
                            child: Text('Set Display Name'),
                          ),
                  ),
                );
              },
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth:
                        MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? constraints.maxWidth
                        : constraints.maxWidth * 0.5,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    title: Text(
                      switch (serviceTier.value) {
                        1 =>
                          'Unlimited for ${confluxRifts.value?.length ?? 0}/3 devices',
                        2 =>
                          'Unlimited for ${confluxRifts.value?.length ?? 0}/10 devices',
                        _ =>
                          '${((userMP.value ?? 0) / 60).toInt()} minutes',
                      },
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    subtitle: Text(
                      'access to VeilNet Public Plane',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: signOut,
                      icon: Icon(Icons.logout),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
