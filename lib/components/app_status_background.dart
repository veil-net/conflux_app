import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppStatusBackground extends HookConsumerWidget {
  const AppStatusBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    return Container(
      decoration: BoxDecoration(
        gradient: switch (veilNetState) {
          VeilNetState.connected => LinearGradient(
            colors: [
              Colors.green.withAlpha(50),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          VeilNetState.disconnected => LinearGradient(
            colors: [
              Colors.red.withAlpha(50),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          VeilNetState.connecting => LinearGradient(
            colors: [
              Colors.yellow.withAlpha(50),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          VeilNetState.disconnecting => LinearGradient(
            colors: [
              Colors.orange.withAlpha(50),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          VeilNetState.error => LinearGradient(
            colors: [
              Colors.red.withAlpha(50),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        },
      ),
    );
  }
}
