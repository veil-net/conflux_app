import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxStateTile extends HookConsumerWidget {
  const ConfluxStateTile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    final confluxDetails = ref.watch(veilNetProvider.notifier).confluxDetails;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: switch (veilNetState) {
            VeilNetState.connected =>
              confluxDetails == null
                  ? TextButton(
                      onPressed: () {
                        ref.invalidate(veilNetProvider);
                      },
                      child: Text(
                        'Failed to load conflux details, retry',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    )
                  : ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: SizedBox(
                        width: 40,
                        height: 30,
                        child: CountryFlag.fromCountryCode(
                          confluxDetails.region,
                        ),
                      ),
                      title: Text(
                        confluxDetails.tag ?? 'No tag',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      subtitle: Text(
                        confluxDetails.cidr ?? 'No cidr',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      trailing: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    ),
            VeilNetState.disconnected => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.warning,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(
                'Please select a plane to connect with VeilNet',
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
            VeilNetState.connecting => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircularProgressIndicator(),
              title: Text(
                'Connecting to VeilNet...',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            VeilNetState.disconnecting => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircularProgressIndicator(),
              title: Text(
                'Disconnecting from VeilNet...',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            VeilNetState.loading => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircularProgressIndicator(),
              title: Text(
                'Loading conflux state...',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            VeilNetState.error => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.error,
                color: Theme.of(context).colorScheme.error,
              ),
              title: TextButton(
                onPressed: () {
                  ref.invalidate(veilNetProvider);
                },
                child: Text(
                  'Failed to load veilnet state, retry',
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ),
          },
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}
