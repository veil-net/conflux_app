import 'package:conflux/components/realm/search_card.dart';
import 'package:conflux/components/realm/tile.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart' as material;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class RealmView extends HookConsumerWidget {
  const RealmView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realmFilter = ref.watch(realmFilterProvider);
    final realms = ref.watch(realmsProvider);

    return material.RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(realmsProvider);
      },
      child: CustomScrollView(
        slivers: [
          SliverFloatingHeader(child: SearchCard()),
          realms.when(
            data: (realms) {
              final filterLower = realmFilter.toLowerCase();
              final filtered = realmFilter.isEmpty
                  ? realms
                  : realms
                        .where(
                          (r) => r.name.toLowerCase().contains(filterLower),
                        )
                        .toList();
              return SliverList.builder(
                itemBuilder: (context, index) =>
                    RealmTile(realm: filtered[index]),
                itemCount: filtered.length,
              );
            },
            error: (error, stackTrace) => SliverToBoxAdapter(
              child: Basic(
                leading: Icon(Icons.error, color: Colors.red),
                title: Text('Failed to load realms'),
                trailing: OutlineButton(
                  onPressed: () => ref.invalidate(realmsProvider),
                  child: Icon(Icons.refresh),
                ),
              ),
            ),
            loading: () => SliverToBoxAdapter(child: Basic().asSkeleton()),
          ),
        ],
      ),
    );
  }
}
