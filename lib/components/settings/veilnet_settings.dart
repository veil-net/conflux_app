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
          ListTile(
            title: Text('Console'),
            leading: Icon(Icons.dashboard),
            trailing: Icon(Icons.open_in_new),
            onTap: () {
              launchUrl(Uri.parse('https://console.veilnet.app/'));
            },
          ),
          ListTile(
            title: Text('Manage Conflux'),
            leading: Icon(Icons.cyclone),
            trailing: Icon(Icons.open_in_new),
            onTap: () {
              launchUrl(Uri.parse('https://console.veilnet.app/conflux'));
            },
          ),
          ListTile(
            title: Text('Manage Realm'),
            leading: Icon(Icons.public),
            trailing: Icon(Icons.open_in_new),
            onTap: () {
              launchUrl(Uri.parse('https://console.veilnet.app/realm'));
            },
          ),
        ],
      ),
    );
  }
}
