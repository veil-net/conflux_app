import 'package:conflux/components/app_background.dart';
import 'package:conflux/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthCallbackPage extends HookConsumerWidget {
  final String refreshToken;
  const AuthCallbackPage({super.key, required this.refreshToken});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() async {
        try {
          await supabase.auth.setSession(refreshToken);
          if (context.mounted) {
            context.go('/');
          }
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Authentication failed. Please try again.'),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
            context.go('/auth');
          }
        }
      });
      return null;
    }, []);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: AppBackground()),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset('assets/images/Logo_H.png'),
                  ).animate().slideY(
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
