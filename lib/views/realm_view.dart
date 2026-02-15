import 'dart:io';

import 'package:conflux/components/realm/realm_list.dart';
import 'package:conflux/components/realm/realm_search_card.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmView extends HookConsumerWidget {
  const RealmView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realmPublicity = ref.watch(realmPublicityProvider);
    if (Platform.isAndroid || Platform.isIOS) {
      return CustomScrollView(
        slivers: [
          SliverFloatingHeader(child: RealmSearchCard()),
          SliverToBoxAdapter(child: RealmList()),
        ],
      );
    }

    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return CustomScrollView(
        slivers: [
          SliverFloatingHeader(child: Center(child: RealmSearchCard())),
          SliverToBoxAdapter(child: Center(child: RealmList())),
          if (realmPublicity == true || realmPublicity == null)
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'More Community Realms Coming Soon...',
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
