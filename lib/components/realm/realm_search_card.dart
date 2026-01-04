import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/components/app_text_input.dart';
import 'package:conflux/providers/realm_details_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class RealmSearchCard extends HookConsumerWidget {
  const RealmSearchCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realmNameTextController = useTextEditingController();
    final realmPublicity = ref.watch(realmPublicityProvider); 
    final developerMode = ref.watch(developerModeProvider);

    Future<void> managePrivateRealms() async {
      try {
        final supabase = ref.read(supabaseClientProvider);
        final session = supabase.auth.currentSession;
        if (session != null) {
          launchUrl(
            Uri.parse(
              'https://auth.veilnet.app/realm#refresh_token=${session.refreshToken}',
            ),
          );
        } else {
          launchUrl(Uri.parse('https://auth.veilnet.app/realm'));
        }
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
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AppTextInput(
                      label: 'Search a Realm',
                      hint: 'Search realms by name',
                      controller: realmNameTextController,
                      keyboardType: TextInputType.text,
                      prefixIcon: FontAwesomeIcons.magnifyingGlass,
                      obscureText: false,
                      readOnly: false,
                      enable: true,
                      onChanged: (value) {
                        ref
                            .read(realmFilterProvider.notifier)
                            .setRealmFilter(value);
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      DialogManager.showDialog(
                        context,
                        'Each VeilNet Realm is a decentralized network of nodes that can be used to connect to the internet. '
                        'Each Realm has a Geographic Region associated with it, which will determine the masquerade geographic location for your traffic.\n\n'
                        'Terra is a special Realm that associated with any country, your traffic will be masqueraded as if it is coming from multiple countries at once. This may cause some websites or applications fail to work properly.',
                        DialogType.info,
                      );
                    },
                    icon: Icon(Icons.info),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: SegmentedButton<bool?>(
                  style: SegmentedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment<bool?>(value: null, label: Text('All')),
                    ButtonSegment<bool?>(value: true, label: Text('Community')),
                    ButtonSegment<bool?>(value: false, label: Text('Private')),
                  ],
                  selected: {realmPublicity},
                  onSelectionChanged: (Set<bool?> selected) {
                    ref
                        .read(realmPublicityProvider.notifier)
                        .setPublicity(selected.first);
                  },
                ),
              ),
              if (developerMode)
                AppButton(
                  label: 'manage Private Realms',
                  onPressed: managePrivateRealms,
                  expand: true,
                  outline: true,
                ),
            ],
          ),
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
