import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:conflux/providers/veilnet_provider.dart';

class StatusCard extends HookConsumerWidget {
  const StatusCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conflux = ref.watch(veilNetProvider);
    final isLoading = useState(false);

    Future<void> disconnect() async {
      try {
        isLoading.value = true;
        await ref.read(veilNetProvider.notifier).disconnect();
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

    return Card(
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
              children: [
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text(conflux.tag ?? "Unknown"),
                  subtitle: Text(conflux.realm),
                ),
                ElevatedButton(
                  onPressed: isLoading.value ? null : disconnect,
                  child: isLoading.value
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      : Text("Disconnect"),
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
    );
  }
}
