import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:conflux/components/toast.dart';
import 'package:conflux/main.dart';

class SocialSignInCard extends HookConsumerWidget {
  const SocialSignInCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> socialSignIn(OAuthProvider provider) async {
      try {
        await supabase.auth.signInWithOAuth(
          provider,
          redirectTo: 'conflux://auth/callback',
        );
      } catch (e) {
        if (context.mounted) {
          toast(context, 'Error', 'Failed to sign in', ToastType.error);
        }
      }
    }

    return Card(
      child: Column(
        spacing: 16,
        children: [
          Text('Continue with').small().bold(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(
                onPressed: () => socialSignIn(OAuthProvider.google),
                density: ButtonDensity.icon,
                child: FaIcon(FontAwesomeIcons.google),
              ),
              OutlineButton(
                onPressed: () => socialSignIn(OAuthProvider.github),
                density: ButtonDensity.icon,
                child: FaIcon(FontAwesomeIcons.github),
              ),
              OutlineButton(
                onPressed: () => socialSignIn(OAuthProvider.azure),
                density: ButtonDensity.icon,
                child: FaIcon(FontAwesomeIcons.microsoft),
              ),
              OutlineButton(
                onPressed: () => socialSignIn(OAuthProvider.discord),
                density: ButtonDensity.icon,
                child: FaIcon(FontAwesomeIcons.discord),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
