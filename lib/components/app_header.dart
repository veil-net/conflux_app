import 'package:conflux/components/toast.dart';
import 'package:conflux/main.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppHeader extends HookConsumerWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilnet = ref.watch(veilnetProvider);
    return AppBar(
      leading: [
        veilnet.when(
          data: (data) {
            switch (data) {
              case VeilnetState.connected:
                return Icon(Icons.check_circle, color: Colors.green);
              case VeilnetState.disconnected:
                return Icon(Icons.close, color: Colors.red);
              case VeilnetState.loading:
                return CircularProgressIndicator();
            }
          },
          error: (error, stack) => OutlineButton(
            density: ButtonDensity.icon,
            child: Icon(Icons.refresh, color: Colors.red),
            onPressed: () {
              ref.invalidate(veilnetProvider);
            },
          ),
          loading: () => CircularProgressIndicator(),
        ),
      ],
      title: veilnet.when(
        data: (data) {
          switch (data) {
            case VeilnetState.connected:
              return Text(
                'Connected - ${ref.read(veilnetProvider.notifier).conflux?.tag ?? 'Unknown'}',
              ).small().muted();
            case VeilnetState.disconnected:
              return Text('Disconnected');
            case VeilnetState.loading:
              return Text('Loading').small().muted();
          }
        },
        error: (error, stack) =>
            Text('Failed to load Conflux state').small().muted(),
        loading: () => Text('Loading Conflux state').small().muted(),
      ),
      trailing: [
        OutlineButton(
          density: ButtonDensity.icon,
          child: Icon(Icons.logout),
          onPressed: () async {
            try {
              await ref.read(veilnetProvider.notifier).disconnect();
            } catch (e) {
              if (context.mounted) {
                toast(context, 'Error', e.toString(), ToastType.error);
              }
              return;
            }

            try {
              await supabase.auth.signOut();
            } catch (e) {
              if (context.mounted) {
                toast(context, 'Error', e.toString(), ToastType.error);
              }
            }
          },
        ),
      ],
    );
  }
}
