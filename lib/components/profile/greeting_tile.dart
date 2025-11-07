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
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreetingTile extends HookConsumerWidget {
  const GreetingTile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfile = ref.watch(userProfileProvider);
    final displayName = useTextEditingController();
    final serviceTier = ref.watch(serviceTierProvider);
    final confluxRifts = ref.watch(confluxRiftsProvider);
    final veilnetState = ref.watch(veilNetProvider);
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
        if (context.mounted) {
          context.go('/');
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            spacing: 4,
            children: [
              Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Text(
                userProfile.value?.email ?? 'Email not set',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          subtitle: userProfile.value?.display_name != null
              ? Text(
                  'Hi, ${userProfile.value!.display_name!}',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
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
              ? IconButton(onPressed: signOut, icon: Icon(Icons.logout))
              : TextButton(
                  onPressed: () {
                    setDsiplayName();
                  },
                  child: Text('Set Display Name'),
                ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(switch (serviceTier.value) {
            1 => 'Unlimited ${confluxRifts.value?.length ?? 0}/3 devices',
            2 => 'Unlimited ${confluxRifts.value?.length ?? 0}/10 devices',
            _ => '${((userProfile.value?.mp ?? 0) / 60).toInt()} minutes',
          }, style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
          subtitle: Text(
            'access to VeilNet Public Plane',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          trailing: ServiceTierChip(),
        ),
      ],
    );
  }
}
