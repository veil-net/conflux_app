import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/forms/sign_in_up.dart';
import 'package:conflux/components/forms/social_sign_in.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    useEffect(() {
      Future.microtask(() async {
        if (user != null) {
          if (context.mounted) {
            context.go('/');
          }
        }
      });
      return null;
    }, [user]);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: AppBackground()),

          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset('assets/images/Logo_H.png'),
                  ).animate().slideY(
                    duration: 250.milliseconds,
                    curve: Curves.easeInOut,
                  ),
                  SignInUpForm(),
                  SocialSignInForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
