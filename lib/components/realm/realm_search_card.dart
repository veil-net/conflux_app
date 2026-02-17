import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class RealmSearchCard extends HookConsumerWidget {
  const RealmSearchCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();

    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Realm'),
            subtitle: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () =>
                      launchUrl(Uri.parse('https://docs.veilnet.app/veilnet/realm')),
                  child: Text(
                    'Learn more about VeilNet Realms',
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: TextFormField(
              controller: searchController,
              decoration: InputDecoration(hintText: 'Search for a realm'),
              onChanged: (value) {
                ref.read(realmFilterProvider.notifier).setRealmFilter(value);
              },
            ),
            trailing: IconButton(
              onPressed: () {
                searchController.clear();
                ref.read(realmFilterProvider.notifier).clearRealmFilter();
              },
              icon: Icon(Icons.clear),
            ),
          ),
        ],
      ),
    );
  }
}
