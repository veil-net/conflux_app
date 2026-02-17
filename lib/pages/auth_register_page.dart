import 'package:conflux/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthRegisterPage extends HookConsumerWidget {
  const AuthRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Center(
                child: SignUpForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
