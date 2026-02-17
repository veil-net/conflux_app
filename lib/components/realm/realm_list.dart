import 'package:conflux/components/realm/realm_tile.dart';
import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmList extends HookConsumerWidget {
  const RealmList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realms = ref.watch(realmsProvider);
    final searchFilter = ref.watch(realmFilterProvider);
    final filteredRealms = useState<List<Realm>>([]);

    useEffect(() {
      realms.when(
        data: (realms) {
          filteredRealms.value = realms
              .where((realm) => realm.name.contains(searchFilter))
              .toList();
        },
        error: (error, stackTrace) {
          return [];
        },
        loading: () {
          return [];
        },
      );
      return null;
    }, [realms, searchFilter]);
    return realms.when(
      data: (realms) {
        return SliverList.builder(
          itemCount: filteredRealms.value.length,
          itemBuilder: (context, index) =>
              RealmTile(realm: filteredRealms.value[index]),
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
