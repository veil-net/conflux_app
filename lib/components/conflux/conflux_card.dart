import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/conflux/conflux_state_tile.dart';
import 'package:conflux/components/conflux/conflux_summary_card.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxCard extends HookConsumerWidget {
  const ConfluxCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: constraints.maxWidth),
          child:
              AppCard(
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 16),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 16),
                  showTrailingIcon: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: VeilNetStateTitle(),
                  initiallyExpanded: true,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.end,
                      children: [ConfluxStateTile(), ConfluxSummaryCard()],
                    ),
                  ],
                ),
              ).animate().slideX(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
              ),
        );
      },
    );
  }
}

class VeilNetStateTitle extends HookConsumerWidget {
  const VeilNetStateTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Icon(
          veilNetState == VeilNetState.connected
              ? Icons.radio_button_checked
              : Icons.radio_button_off,
          color: veilNetState == VeilNetState.connected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.error,
        ),
        Text(
          veilNetState == VeilNetState.connected
              ? "You are connected"
              : "You are disconnected",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: veilNetState == VeilNetState.connected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.error,
          ),
        ),
      ],
    );
  }
}
