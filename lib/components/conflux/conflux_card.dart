import 'package:conflux/components/conflux/conflux_state_tile.dart';
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
          constraints: BoxConstraints(maxWidth: 1000),
          child:
              ExpansionTile(
                tilePadding: EdgeInsets.symmetric(horizontal: 16),
                showTrailingIcon: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                title: VeilNetStateTitle(),
                initiallyExpanded: true,
                children: [ConfluxStateTile()],
              ).animate().slideY(
                duration: 250.milliseconds,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(
          tag: "logo",
          child: Image.asset('assets/images/Logo_H.png'),
        ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
      ],
    );
  }
}
