import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneralSettingsCard extends HookConsumerWidget {
  const GeneralSettingsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: ExpansionTile(
              tilePadding: EdgeInsets.symmetric(horizontal: 16),
              childrenPadding: EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              initiallyExpanded: true,
              title: Text(
                'General',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              children: [
                SwitchListTile.adaptive(
                  dense: true,
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
              ],
            ),
          ).animate().slideX(duration: 500.milliseconds, curve: Curves.easeInOut),
        );
      },
    );
  }
}
