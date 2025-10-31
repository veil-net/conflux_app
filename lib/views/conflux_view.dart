import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxView extends HookConsumerWidget {
  const ConfluxView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
        ],
      ),
    );
  }
}
