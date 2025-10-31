import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneralSettingsCard extends HookConsumerWidget {
  const GeneralSettingsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final developerMode = ref.watch(developerModeProvider);
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    Row(
                      children: [
                        Text(
                          'General',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    const Divider(),
                    SwitchListTile.adaptive(
                      title: Text(
                        'Dark Mode',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      value: darkMode,
                      onChanged: (value) async {
                        await ref
                            .read(darkModeProvider.notifier)
                            .setDarkMode(value);
                      },
                    ),
                    SwitchListTile.adaptive(
                      title: Text(
                        'Developer Mode',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      value: developerMode,
                      onChanged: (value) async {
                        if (value) {
                          DialogManager.showDialog(
                            context,
                            'Developer mode will show management options for the Veilnet Conflux and Private Plan. '
                            'This is intended for developers and advanced users for deploying Veilnet Conflux on their own infrastructure. '
                            'If you are using VeilNet as VPN service, you do not need to enable this option.',
                            DialogType.info,
                          );
                        }
                        await ref
                            .read(developerModeProvider.notifier)
                            .setDeveloperMode(value);
                      },
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
