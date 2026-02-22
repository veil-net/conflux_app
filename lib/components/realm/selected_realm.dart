import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedRealm extends HookConsumerWidget {
  const SelectedRealm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realm = ref.watch(selectedRealmProvider);
    final pageController = ref.watch(pageControllerProvider);
    return Card(
      child: realm.when(
        data: (realm) {
          if (realm == null) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
              children: [
                Basic(
                  title: Text('No selected realm'),
                  subtitle: Text(
                    'Please select a realm to continue',
                  ).small().muted(),
                ),
                PrimaryButton(
                  child: Text('Select Realm'),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                ),
              ],
            );
          }
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              Basic(
                leading: SizedBox(
                  width: 40,
                  height: 30,
                  child: CountryFlag.fromCountryCode(realm.region),
                ),
                title: Text(realm.name),
                subtitle: Text(realm.subnet),
                trailing: OutlineButton(
                  child: Text('Change'),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                ),
              ),
              PrimaryButton(
                child: Text('Connect'),
                onPressed: () {
                  pageController.jumpToPage(1);
                },
              ),
            ],
          );
        },
        error: (error, stackTrace) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            Basic(
              leading: Icon(Icons.error, color: Colors.red),
              title: Text('Failed to load selected realm').small().muted(),
              trailing: OutlineButton(
                density: ButtonDensity.icon,
                onPressed: () => ref.invalidate(selectedRealmProvider),
                child: Icon(Icons.refresh),
              ),
            ),
            PrimaryButton(
              child: Text('Select Realm'),
              onPressed: () {
                pageController.jumpToPage(1);
              },
            ),
          ],
        ),
        loading: () => Basic().asSkeleton(),
      ),
    );
  }
}
