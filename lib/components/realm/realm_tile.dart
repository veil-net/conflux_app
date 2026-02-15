import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealmTile extends HookConsumerWidget {
  final Realm realm;
  const RealmTile({super.key, required this.realm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    final confluxPortals = ref.watch(confluxPortalsProvider);
    final numberOfPortals = useState(
      confluxPortals.value
              ?.where((conflux) => conflux.realm_id == realm.id)
              .length ??
          0,
    );
    final developerMode = ref.watch(developerModeProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : 500 < constraints.maxWidth * 0.5
                ? 500
                : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              leading: SizedBox(
                width: 40,
                height: 30,
                child: CountryFlag.fromCountryCode(realm.region),
              ),
              title: Text(
                realm.name,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: developerMode
                  ? Text(
                      "You have ${numberOfPortals.value} Portals on this realm",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  : null,
              trailing: AppButton(
                outline: false,
                expand: false,
                label: 'Select',
                onPressed: veilNetState == VeilNetState.disconnected
                    ? () async {
                        await ref
                            .read(selectedRealmProvider.notifier)
                            .setSelectedRealm(realm);
                        ref.read(pageControllerProvider).jumpToPage(0);
                      }
                    : null,
              ),
            ),
          ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
        );
      },
    );
  }
}
