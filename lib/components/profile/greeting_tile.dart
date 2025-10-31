import 'package:conflux/main.dart';
import 'package:conflux/providers/user_profile_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreetingTile extends HookConsumerWidget {
  const GreetingTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);
    final veilnetState = ref.watch(veilNetProvider);
    return profile.when(
      data: (data) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        data.email,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, ${data.display_name}",
                        style: Theme.of(context).textTheme.headlineLarge
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ],
              ).animate().slideX(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
              ),
              IconButton(
                onPressed: veilnetState == VeilNetState.connected
                    ? null
                    : () async {
                        if (veilnetState == VeilNetState.connected) {
                          await ref.read(veilNetProvider.notifier).disconnect();
                        }
                        await supabase.auth.signOut();
                        if (context.mounted) {
                          context.go('/auth');
                        }
                      },
                icon: Icon(Icons.logout),
              ),
            ],
          ),
        ],
      ),
      error: (error, stackTrace) => TextButton(
        onPressed: () {
          ref.invalidate(userProfileProvider);
        },
        child: Text('Failed to load user profile, retry'),
      ),
      loading: () => const LinearProgressIndicator(),
    );
  }
}
