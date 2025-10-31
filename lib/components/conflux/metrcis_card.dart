import 'dart:async';
import 'dart:developer';

import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MetricsCard extends HookConsumerWidget {
  final String name;
  final String metricsName;
  final IconData icon;
  final String description;
  const MetricsCard({
    super.key,
    required this.name,
    required this.metricsName,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metrics = useState<int?>(null);

    useEffect(() {
      Future.microtask(() async {
        final value = await ref
            .read(veilNetProvider.notifier)
            .getMetrics(metricsName);
        metrics.value = value;
      });
      return null;
    }, []);

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 5), (timer) async {
        final value = await ref
            .read(veilNetProvider.notifier)
            .getMetrics(metricsName);
        log('metrics $metricsName: $value');
        metrics.value = value;
      });
      return () {
        timer.cancel();
      };
    }, []);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth * 0.5
                : constraints.maxWidth / 3,
          ),
          child: GestureDetector(
            onTap: () {
              DialogManager.showDialog(context, description, DialogType.info);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: AppCard(
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  title: Text(
                    metrics.value != null ? metrics.value.toString() : '0',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  subtitle: Text(
                    name,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
