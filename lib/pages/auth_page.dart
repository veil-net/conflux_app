import 'package:conflux/components/social_sign_in_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:conflux/components/login_form.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
