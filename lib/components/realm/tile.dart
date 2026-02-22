import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class RealmTile extends HookConsumerWidget {
  final Realm realm;
  const RealmTile({super.key, required this.realm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Card(
      child: Basic(
        leading: SizedBox(
          width: 40,
          height: 30,
          child: CountryFlag.fromCountryCode(realm.region),
        ),
        title: Text(realm.name),
        subtitle: Text(realm.subnet),
        trailing: PrimaryButton(
          child: Text('Select'),
          onPressed: () async {
            await ref
                .read(selectedRealmProvider.notifier)
                .setSelectedRealm(realm);
            pageController.jumpToPage(0);
          },
        ),
      ),
    );
  }
}
