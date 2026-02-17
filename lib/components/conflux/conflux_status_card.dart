import 'package:conflux/components/conflux/conflux_taint_card.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StatusCard extends HookConsumerWidget {
  const StatusCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conflux = ref.watch(veilNetProvider);
    final isExpanded = useState(false);

    return AnimatedSize(
      duration: Duration(milliseconds: 300),
      child: Card(
        child: conflux.when(
          data: (conflux) {
            if (conflux == null) {
              return ListTile(
                leading: Icon(Icons.warning),
                title: Text("Not Connected"),
                subtitle: Text("Please select a VeilNet Realm to connect"),
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text("Connected"),
                    subtitle: Text(conflux.tag ?? "Unknown"),
                    trailing: Chip(
                      label: Text(conflux.realm),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  ConfluxTaintCard(conflux: conflux),
                  if (!isExpanded.value)
                    GestureDetector(
                      onTap: () {
                        isExpanded.value = true;
                      },
                      child: Icon(Icons.expand_more),
                    ),
                  if (isExpanded.value)
                    Column(
                      children: [
                        ListTile(title: Text("ID"), trailing: Text(conflux.id)),
                        ListTile(
                          title: Text("Signature"),
                          trailing: Text(conflux.signature ?? "Unknown"),
                        ),
                        ListTile(
                          title: Text("CIDR"),
                          trailing: Text(conflux.cidr ?? "Unknown"),
                        ),
                      ],
                    ),
                  if (isExpanded.value)
                    GestureDetector(
                      onTap: () {
                        isExpanded.value = false;
                      },
                      child: Icon(Icons.expand_less),
                    ),
                ],
              );
            }
          },
          error: (error, stackTrace) => ListTile(
            title: Text("Failed to load VeilNet status"),
            subtitle: Text(error.toString()),
            trailing: IconButton(
              onPressed: () {
                ref.invalidate(veilNetProvider);
              },
              icon: Icon(Icons.refresh),
            ),
          ),
          loading: () => ListTile(title: Text('Loading VeilNet status...')),
        ),
      ),
    );
  }
}
