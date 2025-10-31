import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_text_input.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/user_profile_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountManagement extends HookConsumerWidget {
  const AccountManagement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayNameController = useTextEditingController();
    final veilnetState = ref.watch(veilNetProvider);

    Future<void> setDsiplayName() async {
      try {
        final api = ref.watch(apiProvider);
        await api.patch(
          '/auth/profile/display-name?display_name=${displayNameController.text}',
        );
        ref.invalidate(userProfileProvider);
        if (context.mounted) {
          DialogManager.showDialog(
            context,
            'Display name changed successfully',
            DialogType.success,
          );
        }
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
      launchUrl(
        Uri.parse('https://billing.stripe.com/p/login/00wbJ282hg55dlAdEl6Na00'),
      );
    }

    Future<void> resetPassword() async {
      launchUrl(Uri.parse('https://auth.veilnet.app/reset-password'));
    }

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
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Account Management',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      spacing: 16,
                      children: [
                        Flexible(
                          child: AppTextInput(
                            label: 'Change Display Name',
                            hint: 'New display name',
                            controller: displayNameController,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icons.person,
                            obscureText: false,
                            readOnly: false,
                            enable: true,
                          ),
                        ),
                        AppButton(
                          label: 'Change',
                          onPressed: setDsiplayName,
                          outline: true,
                        ),
                      ],
                    ),
                    AppButton(
                      label: 'Change Password',
                      onPressed: resetPassword,
                      expand: true,
                    ),
                    AppButton(
                      label: 'Manage Account',
                      onPressed: manageAccount,
                      expand: true,
                    ),
                    AppButton(
                      label: 'Switch Account',
                      outline: true,
                      onPressed: switchAccount,
                      expand: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
