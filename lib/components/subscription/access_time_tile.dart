import 'dart:async';

import 'package:conflux/components/profile/service_tier_chip.dart';
import 'package:conflux/providers/user_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccessTimeTile extends HookConsumerWidget {
  const AccessTimeTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mp = ref.watch(userMPProvider);

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 5), (timer) {
        ref.invalidate(userMPProvider);
      });
      return () {
        timer.cancel();
      };
    }, []);

    return ListTile(
      leading: Icon(
        Icons.access_time,
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Text(
          '${((mp.value ?? 0) / 60).toInt()} minutes',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      subtitle: Text(
        'Remaining Access to VeilNet',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      trailing: ServiceTierChip(),
    );
  }
}
