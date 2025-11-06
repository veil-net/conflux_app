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
    ref.watch(veilNetProvider);
    final confluxDetails = ref.watch(veilNetProvider.notifier).confluxDetails;
    if (confluxDetails == null) {
      return const SizedBox.shrink();
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child:
              AppCard(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "You are connected as:",
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: SizedBox(
                        width: 40,
                        height: 30,
                        child: CountryFlag.fromCountryCode(
                          confluxDetails.region,
                        ),
                      ),
                      title: confluxDetails.tag != null
                          ? Text(
                              confluxDetails.tag!,
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            )
                          : const LinearProgressIndicator(),
                      subtitle: confluxDetails.cidr != null
                          ? Text(
                              confluxDetails.cidr!,
                              style: Theme.of(context).textTheme.titleSmall
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                  ),
                            )
                          : const LinearProgressIndicator(),
                    ),
                  ],
                ),
              ).animate().slideY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
              ),
        );
      },
    );
  }
}

extension convertFlag on String {
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );
  }
}
