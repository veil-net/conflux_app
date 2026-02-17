import 'package:conflux/components/realm/realm_list.dart';
import 'package:conflux/components/realm/realm_search_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmView extends HookConsumerWidget {
  const RealmView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverFloatingHeader(child: RealmSearchCard()),
        RealmList(),
      ],
    );
  }
}
