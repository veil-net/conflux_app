import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedRealmCard extends HookConsumerWidget {
  const SelectedRealmCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRealm = ref.watch(selectedRealmProvider);
    final veilnet = ref.watch(veilNetProvider);
    final loading = useState(false);

    Future<void> connect() async {
      try {
        loading.value = true;
        if (selectedRealm.value == null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('No realm selected')));
          return;
        }
        await ref.read(veilNetProvider.notifier).connect(selectedRealm.value!);
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Failed to connect: $e')));
        }
      } finally {
        loading.value = false;
      }
    }

    Future<void> disconnect() async {
      try {
        loading.value = true;
        await ref.read(veilNetProvider.notifier).disconnect();
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Failed to disconnect: $e')));
        }
      } finally {
        loading.value = false;
      }
    }

    return AnimatedSize(
      duration: Duration(milliseconds: 300),
      child: Card(
        child: selectedRealm.when(
          data: (realm) => realm != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: SizedBox(
                        width: 32,
                        height: 24,
                        child: CountryFlag.fromCountryCode(realm.region),
                      ),
                      title: Text(realm.name),
                      subtitle: Text(realm.subnet),
                      trailing: OutlinedButton(
                        onPressed: () {
                          ref.read(pageControllerProvider).jumpToPage(1);
                        },
                        child: Text('Change'),
                      ),
                    ),
                    veilnet.when(
                      data: (veilnet) => veilnet == null
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: FilledButton(
                                  onPressed: loading.value ? null : connect,
                                  child: Text('Connect'),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: FilledButton(
                                  onPressed: loading.value ? null : disconnect,
                                  child: Text('Disconnect'),
                                ),
                              ),
                            ),
                      error: (error, stackTrace) =>
                          ListTile(
                            leading: Icon(Icons.error, color: Colors.red),
                            title: Text('Failed to load VeilNet status'),
                            trailing: IconButton(
                              onPressed: () {
                                ref.invalidate(veilNetProvider);
                              },
                              icon: Icon(Icons.refresh),
                            ),
                          ),
                      loading: () => LinearProgressIndicator(),
                    ),
                  ],
                )
              : Column(
                children: [
                  ListTile(
                    title: Text('No realm selected'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {
                          ref.read(pageControllerProvider).jumpToPage(1);
                        },
                        child: Text('Select a realm'),
                      ),
                    ),
                  ),
                ],
              ),
          error: (error, stackTrace) => ListTile(
            leading: Icon(Icons.error, color: Colors.red),
            title: Text('Failed to load selected realm'),
            trailing: IconButton(
              onPressed: () {
                ref.invalidate(selectedRealmProvider);
              },
              icon: const Icon(Icons.refresh),
            ),
          ),
          loading: () => ListTile(
            leading: CircularProgressIndicator(),
            title: Text('Loading selected realm...'),
          ),
        ),
      ),
    );
  }
}
