import 'package:conflux/components/conflux/conflux_summary.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileCard extends HookConsumerWidget {
  const ProfileCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final isLoading = useState(false);

    Future<void> signOut() async {
      try {
        isLoading.value = true;
        await ref.read(supabaseClientProvider).auth.signOut();
        if (context.mounted) {
          context.go('/auth');
        }
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

    return AnimatedSize(
      duration: Duration(milliseconds: 300),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: SizedBox(width: 32, height: 32, child: Image.asset('assets/icon/icon.png')),
              title: Text("Hello"),
              subtitle: Text(user?.email ?? 'Unknown'),
              trailing: IconButton(onPressed: signOut, icon: Icon(Icons.logout)),
            ),
            ConfluxSummary(),
          ],
        ),
      ),
    );
  }
}
