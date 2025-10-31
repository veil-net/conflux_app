import 'package:conflux/components/conflux/metrcis_card.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxMetrics extends HookConsumerWidget {
  const ConfluxMetrics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(veilNetProvider);
    final confluxDetails = ref.watch(veilNetProvider.notifier).confluxDetails;
    if (confluxDetails == null) {
      return const SizedBox.shrink();
    }

    return Wrap(
      children: [
        MetricsCard(
          name: 'Tethers',
          metricsName: 'num_tethers',
          icon: Icons.cable,
          description:
              'Tethers are ephemeral links from your device to other Veilnet nodes. They are the data channel to forward you traffic through VeilNet.',
        ),
        MetricsCard(
          name: 'Streams',
          metricsName: 'num_streams',
          icon: Icons.stream,
          description:
              'Streams are the independent encryption channels to different destinations. They are created for each IP address you are currently accessing.',
        ),
        MetricsCard(
          name: 'Routes',
          metricsName: 'num_routes',
          icon: Icons.route,
          description:
              'Routes are the multi-hop paths discovered by your device to different destinations. They are used to forward your traffic through VeilNet.',
        ),
        MetricsCard(
          name: 'Relays',
          metricsName: 'num_relays',
          icon: Icons.repeat,
          description:
              'Relays are traffics being relayed via your device to other Veilnet nodes.',
        ),
        MetricsCard(
          name: 'Ingressers',
          metricsName: 'num_ingressers',
          icon: Icons.input,
          description:
              'Ingressers are internal load balancers processing incoming traffic. They are used to process the incoming traffic to your device.',
        ),
        MetricsCard(
          name: 'Egressers',
          metricsName: 'num_egressers',
          icon: Icons.output,
          description:
              'Egressers are internal load balancers processing outgoing traffic. They are used to process the outgoing traffic from your device.',
        ),
      ],
    );
  }
}
