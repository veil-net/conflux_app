import 'package:conflux/models/conflux.dart';
import 'package:conflux/providers/conflux_taint_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxTaintCard extends HookConsumerWidget {
  final Conflux conflux;
  const ConfluxTaintCard({super.key, required this.conflux});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taints = ref.watch(confluxTaintProvider(conflux.id));
    final taintController = useTextEditingController();

    final isLoading = useState(false);

    Future<void> addTaint() async {
      try {
        isLoading.value = true;
        await ref
            .read(confluxTaintProvider(conflux.id).notifier)
            .addTaint(taintController.text);
        taintController.clear();
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(e.toString())));
        }
      } finally {
        isLoading.value = false;
      }
    }

    Future<void> removeTaint(String taint) async {
      try {
        isLoading.value = true;
        await ref
            .read(confluxTaintProvider(conflux.id).notifier)
            .removeTaint(taint);
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(e.toString())));
        }
      } finally {
        isLoading.value = false;
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: TextFormField(
            controller: taintController,
            decoration: InputDecoration(hintText: 'Enter a new taint'),
          ),
          trailing: FilledButton(
            onPressed: isLoading.value ? null : addTaint,
            child: Text('Add'),
          ),
        ),
        taints.when(
          data: (taints) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: taints
                    .map(
                      (taint) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Chip(
                          label: Text(taint.taint),
                          deleteIcon: Icon(
                            Icons.close,
                          ),
                          onDeleted: isLoading.value
                              ? null
                              : () => removeTaint(taint.taint),
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
          },
          error: (error, stackTrace) => ListTile(
            title: Text('Failed to load conflux taints'),
            trailing: IconButton(
              onPressed: () {
                ref.invalidate(confluxTaintProvider(conflux.id));
              },
              icon: Icon(Icons.refresh),
            ),
          ),
          loading: () => ListTile(
            title: Text('Loading conflux taints...'),
            subtitle: LinearProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
