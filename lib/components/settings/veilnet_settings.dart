import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class VeilnetSettings extends HookConsumerWidget {
  const VeilnetSettings({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        children: [
          ListTile(title: Text('VeilNet')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://console.veilnet.app/'));
                },
                child: Text('Dashboard'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://console.veilnet.app/conflux'));
                },
                child: Text('Manage Conflux'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  launchUrl(Uri.parse('https://console.veilnet.app/realm'));
                },
                child: Text('Manage Realm'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
