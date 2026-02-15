import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class RealmTile extends HookConsumerWidget {
  const RealmTile({super.key, required this.realm});
  final Realm realm;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conflux = ref.watch(veilNetProvider);
    final isLoading = useState(false);
    Future<void> connect() async {
      try {
        isLoading.value = true;
        await ref.read(veilNetProvider.notifier).connect(realm);
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

    return ListTile(
      title: Text(realm.name),
      subtitle: Text(realm.subnet),
      trailing: conflux.when(
        data: (conflux) => ElevatedButton(
          onPressed: isLoading.value ? null : conflux == null ? connect : null,
          child: isLoading.value
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                )
              : Text("Connect"),
        ),
        error: (error, stackTrace) => IconButton(
          onPressed: () {
            ref.invalidate(veilNetProvider);
          },
          icon: Icon(Icons.refresh),
        ),
        loading: () => SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
