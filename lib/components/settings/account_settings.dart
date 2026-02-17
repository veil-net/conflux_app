import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountSettings extends HookConsumerWidget {
  const AccountSettings({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(title: Text('Account')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse('https://console.veilnet.app/password/reset'),
                  );
                },
                child: Text('Reset Password'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
