import 'package:conflux/components/app_card.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CurrentConfluxCard extends HookConsumerWidget {
  const CurrentConfluxCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    final confluxDetails = ref.watch(veilNetProvider.notifier).confluxDetails;
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: ExpansionTile(
              tilePadding: EdgeInsets.symmetric(horizontal: 16),
              childrenPadding: EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                veilNetState == VeilNetState.connected
                    ? "You are connected"
                    : "You are disconnected",
                style: TextStyle(
                  color: veilNetState == VeilNetState.connected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
              ),
              initiallyExpanded: true,
              children: [
                switch (veilNetState) {
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
                          ),
                  VeilNetState.disconnected => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.warning,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    title: Text(
                      'Please select a plane to connect with VeilNet',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                  VeilNetState.connecting => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircularProgressIndicator(),
                    title: Text(
                      'Connecting to VeilNet...',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  VeilNetState.disconnecting => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircularProgressIndicator(),
                    title: Text(
                      'Disconnecting from VeilNet...',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
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
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ),
                },
              ],
            ),
          ).animate().slideX(duration: 500.milliseconds, curve: Curves.easeInOut),
        );
      },
    );
  }
}
