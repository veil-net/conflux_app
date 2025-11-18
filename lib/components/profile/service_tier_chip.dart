import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/service_tier_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceTierChip extends HookConsumerWidget {
  const ServiceTierChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serviceTier = ref.watch(serviceTierProvider);
    return serviceTier.when(
      data: (data) {
        switch (data) {
          case 0:
            return SubscriptionTierChip(label: 'Community');
          case 1:
            return SubscriptionTierChip(label: 'Plus');
          case 2:
            return SubscriptionTierChip(label: 'Max');
          default:
            return SubscriptionTierChip(label: 'Unknown');
        }
      },
      error: (error, stackTrace) => IconButton(
        onPressed: () {
          ref.invalidate(serviceTierProvider);
        },
        icon: const Icon(Icons.refresh, color: Colors.red),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class SubscriptionTierChip extends HookConsumerWidget {
  final String label;
  const SubscriptionTierChip({super.key, required this.label});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> manageSubscription() async {
      try {
        final session = supabase.auth.currentSession;
        if (session != null) {
          launchUrl(Uri.parse('https://auth.veilnet.app/subscribe#refresh_token=${session.refreshToken}'));
        } else {
          launchUrl(Uri.parse('https://auth.veilnet.app/subscribe'));
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }
    
    return GestureDetector(
      onTap: manageSubscription,
      child: Chip(
        label: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
