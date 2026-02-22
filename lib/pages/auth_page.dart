import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:conflux/components/auth/sign_in_form.dart';
import 'package:conflux/components/auth/social_sign_in_card.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SignInForm(), SocialSignInCard()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
