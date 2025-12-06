import 'dart:io';

import 'package:conflux/components/plane/plane_list.dart';
import 'package:conflux/components/plane/plane_search_card.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneView extends HookConsumerWidget {
  const PlaneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planePublicity = ref.watch(planePublicityProvider);
    if (Platform.isAndroid || Platform.isIOS) {
      return CustomScrollView(
        slivers: [
          SliverFloatingHeader(child: PlaneSearchCard()),
          SliverToBoxAdapter(child: PlaneList()),
        ],
      );
    }

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return CustomScrollView(
        slivers: [
          SliverFloatingHeader(child: Center(child: PlaneSearchCard())),
          SliverToBoxAdapter(child: Center(child: PlaneList())),
          if (planePublicity == true || planePublicity == null)
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'More Community Planes Coming Soon...',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
        ],
      );
    }

    return Center(child: Text('Unsupported platform'));
  }
}
