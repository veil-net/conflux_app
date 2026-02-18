import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmTile extends HookConsumerWidget {
  const RealmTile({super.key, required this.realm});
  final Realm realm;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        leading: SizedBox(
          width: 32,
          height: 24,
          child: CountryFlag.fromCountryCode(realm.region),
        ),
        title: Text(realm.name),
        subtitle: Text(realm.subnet),
        trailing: FilledButton(
          onPressed: () {
            ref.read(selectedRealmProvider.notifier).setSelectedRealm(realm);
            ref.read(pageControllerProvider).jumpToPage(0);
          },    
          child: Text('Select'),
        ),
      ),
    );
  }
}
