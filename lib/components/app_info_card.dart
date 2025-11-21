import 'package:conflux/components/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfoCard extends HookConsumerWidget {
  const AppInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Hero(tag: "logo", child: Image.asset('assets/images/Logo_H.png'))
                  .animate()
                  .slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Version',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                trailing: Text(
                  'Beta',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.book),
                title: Text(
                  'Documentation',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onTap: () => launchUrl(Uri.parse('https://veilnet.net/docs')),
                trailing: Icon(Icons.open_in_new),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.email),
                title: Text(
                  'Email Support',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onTap: () => launchUrl(Uri.parse('mailto:support@veilnet.org')),
                trailing: Text(
                  'support@veilnet.org',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () =>
                    launchUrl(Uri.parse('https://discord.gg/WqJYddHr')),
                leading: Icon(Icons.discord),
                title: Text(
                  'Discord Support',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                trailing: Icon(Icons.open_in_new),
              ),
            ],
          ),
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
