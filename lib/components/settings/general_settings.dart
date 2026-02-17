import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneralSettings extends HookConsumerWidget {
  const GeneralSettings({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(title: Text('General')),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: darkMode,
              onChanged: (value) {
                ref.read(darkModeProvider.notifier).setDarkMode(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
