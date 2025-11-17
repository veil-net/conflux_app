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
          SliverFloatingHeader(child: PlaneSearchCard()),
          SliverToBoxAdapter(child: PlaneList()),
        ],
      );
    }

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Column(children: [PlaneSearchCard(), PlaneList()]),
          ),
        ),
      );
    }

    return Center(child: Text('Unsupported platform'));
  }
}
