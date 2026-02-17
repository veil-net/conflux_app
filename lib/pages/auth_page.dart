import 'package:conflux/components/login_form.dart';
import 'package:conflux/components/social_sign_in_card.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final user = ref.watch(currentUserProvider);

    useEffect(() {
      if (user != null) {
        Future.microtask(() {
          if (context.mounted) {
            context.go('/');
          }
        });
      }
      return null;
    }, [user]);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [LoginForm(), SocialSignInForm()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
