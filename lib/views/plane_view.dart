import 'package:conflux/components/plane/plane_list.dart';
import 'package:conflux/components/plane/plane_search_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneView extends HookConsumerWidget {
  const PlaneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        PinnedHeaderSliver(
          child: PlaneSearchCard()
        ),
        PlaneList(),
      ],
    );
  }
}
