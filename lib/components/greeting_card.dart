import 'package:conflux/main.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GreetingCard extends HookConsumerWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxes = ref.watch(confluxesProvider);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 16,
        children: [
          Basic(
            title: Text('Hello'),
            subtitle: Text(
              '${supabase.auth.currentUser?.email}',
            ).large().bold(),
            trailing: OutlineButton(
              onPressed: () =>
                  launchUrl(Uri.parse('https://console.veilnet.app')),
              child: Text('Console'),
            ),
          ),
          Divider(),
          confluxes.when(
            data: (confluxes) {
              const onlineThreshold = Duration(seconds: 30);
              final now = DateTime.now();
              final onlineCount = confluxes
                  .where(
                    (c) =>
                        c.last_seen != null &&
                        now.difference(c.last_seen!).inSeconds <
                            onlineThreshold.inSeconds,
                  )
                  .length;
              final offlineCount = confluxes.length - onlineCount;
              final riftCount = confluxes.where((c) => c.rift == true).length;
              final portalCount = confluxes
                  .where((c) => c.portal == true)
                  .length;
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 32,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Basic(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          title: Text('$onlineCount'),
                          subtitle: Text('Online Confluxes'),
                        ),
                      ),
                      Expanded(
                        child: Basic(
                          leading: Icon(Icons.highlight_off, color: Colors.red),
                          title: Text('$offlineCount'),
                          subtitle: Text('Offline Confluxes'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Basic(
                          leading: Icon(Icons.cyclone),
                          title: Text('$portalCount'),
                          subtitle: Text('Portal Confluxes'),
                        ),
                      ),
                      Expanded(
                        child: Basic(
                          leading: Icon(Icons.electric_bolt),
                          title: Text('$riftCount'),
                          subtitle: Text('Rift Confluxes'),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            error: (error, stackTrace) => Basic(
              leading: Icon(Icons.error, color: Colors.red),
              title: Text('Failed to load confluxes'),
              trailing: OutlineButton(
                onPressed: () => ref.invalidate(confluxesProvider),
                child: Icon(Icons.refresh),
              ),
            ),
            loading: () => Basic().asSkeleton(),
          ),
        ],
      ),
    );
  }
}
