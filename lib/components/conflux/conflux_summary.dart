import 'dart:async';

import 'package:conflux/providers/conflux_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxSummary extends HookConsumerWidget {
  const ConfluxSummary({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confluxes = ref.watch(confluxesProvider);

    final onlineCount = useState(0);
    final offlineCount = useState(0);
    final portalCount = useState(0);
    final riftCount = useState(0);
    final totalCount = useState(0);
    final isLoading = useState(false);
    final isError = useState(false);

    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 10), (_) {
        ref.invalidate(confluxesProvider);
      });
      return () => timer.cancel();
    }, []);

    useEffect(() {
      confluxes.when(
        data: (data) {
          onlineCount.value = data
              .where(
                (conflux) => conflux.last_seen.isAfter(
                  DateTime.now().subtract(Duration(seconds: 30)),
                ),
              )
              .length;
          offlineCount.value = data
              .where(
                (conflux) => conflux.last_seen.isBefore(
                  DateTime.now().subtract(Duration(seconds: 30)),
                ),
              )
              .length;
          portalCount.value = data
              .where((conflux) => conflux.portal == true)
              .length;
          riftCount.value = data
              .where((conflux) => conflux.rift == true)
              .length;
          totalCount.value = data.length;
          isLoading.value = false;
          isError.value = false;
        },
        error: (error, stackTrace) {
          isError.value = true;
        },
        loading: () {
          onlineCount.value = 0;
          offlineCount.value = 0;
          portalCount.value = 0;
          riftCount.value = 0;
          totalCount.value = 0;
          isLoading.value = true;
          isError.value = false;
        },
      );
      return null;
    }, [confluxes]);
    return Column(
      children: [
        if (isLoading.value)
          ListTile(
            leading: CircularProgressIndicator(),
            title: Text('Loading Conflux information...'),
          ),
        if (isError.value)
          ListTile(
            leading: Icon(Icons.error),
            title: Text('Failed to load Conflux information'),
            trailing: IconButton(
              onPressed: () {
                ref.invalidate(confluxesProvider);
              },
              icon: Icon(Icons.refresh),
            ),
          ),
        if (!isLoading.value && !isError.value)
          ListTile(
            title: Text('Your Conflux Nodes'),
            trailing: IconButton(
              onPressed: () {
                ref.invalidate(confluxesProvider);
              },
              icon: Icon(Icons.refresh),
            ),
          ),
        if (!isLoading.value && !isError.value)
          Row(
            children: [
              Flexible(
                child: ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('${onlineCount.value}/${totalCount.value}'),
                  subtitle: Text('Online'),
                ),
              ),
              Flexible(
                child: ListTile(
                  leading: Icon(Icons.cancel, color: Colors.red),
                  title: Text('${offlineCount.value}/${totalCount.value}'),
                  subtitle: Text('Offline'),
                ),
              ),
            ],
          ),
        if (!isLoading.value && !isError.value)
          Row(
            children: [
              Flexible(
                child: ListTile(
                  leading: Icon(
                    Icons.cyclone,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text('${portalCount.value}/${totalCount.value}'),
                  subtitle: Text('Portal'),
                ),
              ),
              Flexible(
                child: ListTile(
                  leading: Icon(
                    Icons.electric_bolt,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text('${riftCount.value}/${totalCount.value}'),
                  subtitle: Text('Rift'),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
