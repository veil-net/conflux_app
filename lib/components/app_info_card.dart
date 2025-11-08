import 'package:conflux/components/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              Image.asset(
                'assets/images/Logo_H.png',
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Version',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                trailing: Text(
                  'Beta',
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Support',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                trailing: Text(
                  'support@veilnet.org',
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ],
          ),
        ),
      ).animate().slideY(duration: 500.milliseconds, curve: Curves.easeInOut),
    );
  }
}
