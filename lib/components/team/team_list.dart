import 'package:conflux/components/app_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeamList extends HookConsumerWidget {
  const TeamList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppCard(child: Text('Team List')),
      ),
    );
  }
}
