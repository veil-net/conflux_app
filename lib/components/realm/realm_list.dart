import 'package:conflux/components/realm/realm_tile.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmList extends HookConsumerWidget {
  const RealmList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realms = ref.watch(realmsProvider);
    return realms.when(
      data: (realms) {
        return SliverList.builder(
          itemCount: realms.length,
          itemBuilder: (context, index) => RealmTile(realm: realms[index]),
        );
      },
      error: (error, stackTrace) {
        return SliverFillRemaining(
          child: Center(child: Text(error.toString())),
        );
      },
      loading: () {
        return SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
