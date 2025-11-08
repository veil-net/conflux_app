import 'dart:io';

import 'package:conflux/components/plane/plane_list.dart';
import 'package:conflux/components/plane/plane_search_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneView extends HookConsumerWidget {
  const PlaneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid || Platform.isIOS) {
      return CustomScrollView(
        slivers: [
          PinnedHeaderSliver(child: PlaneSearchCard()),
          SliverToBoxAdapter(child: PlaneList()),
        ],
      );
    }

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return CustomScrollView(
        slivers: [
          PinnedHeaderSliver(child: PlaneSearchCard()),
          SliverToBoxAdapter(child: PlaneList()),
        ],
      );
    }

    return Center(child: Text('Unsupported platform'));
  }
}
