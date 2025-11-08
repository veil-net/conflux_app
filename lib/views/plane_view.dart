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
        SliverFillRemaining(
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment:
                MediaQuery.of(context).orientation == Orientation.portrait
                ? WrapAlignment.start
                : WrapAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1000),
                child: PlaneSearchCard(),
              ),
              PlaneList(),
            ],
          ),
        ),
      ],
    );
  }
}
