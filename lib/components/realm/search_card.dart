import 'package:conflux/providers/realm_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchCard extends HookConsumerWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text('Realms'),
          LinkButton(
            density: ButtonDensity.compact,
            child: Text('Learn more about VeilNet Realm').small().muted(),
            onPressed: () => launchUrl(
              Uri.parse('https://docs.veilnet.app/veilnet/realm'),
            ),
          ),
          TextField(
            controller: searchController,
            placeholder: Text('Search realm by name').muted().small(),
            onChanged: (value) {
              ref.read(realmFilterProvider.notifier).setRealmFilter(value);
            },
            features: [InputFeature.clear()],
          ),
        ],
      ),
    );
  }
}
