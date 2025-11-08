import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WindowsSettings extends HookConsumerWidget {
  const WindowsSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Row(
                children: [
                  Text(
                    'Windows Settings',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Text(
                'This will force stop the Veilnet Conflux service and remove the VPN interface. Please use this option only if you are experiencing issues.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
              AppButton(
                label: 'Force Stop Veilnet Conflux',
                onPressed: () async {
                  try {
                    await ref.read(confluxServiceProvider.notifier).down();
                  } catch (e) {
                    if (context.mounted) {
                      DialogManager.showDialog(
                        context,
                        e.toString(),
                        DialogType.error,
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ).animate().slideX(duration: 500.milliseconds, curve: Curves.easeInOut),
    );
  }
}
