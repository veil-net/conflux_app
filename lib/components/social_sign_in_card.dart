import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SocialSignInForm extends HookConsumerWidget {
  const SocialSignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signIn(OAuthProvider provider) async {
      try {
        final supabase = ref.read(supabaseClientProvider);
        await supabase.auth.signInWithOAuth(
          provider,
          redirectTo: 'conflux://auth/callback',
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'You will be redirected to login via your browser, if the page does not return automatically, please refresh the page.',
              ),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.toString()),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
      }
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Or continue with',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => signIn(OAuthProvider.google),
                  icon: Icon(FontAwesomeIcons.google),
                ),
                IconButton(
                  onPressed: () => signIn(OAuthProvider.github),
                  icon: Icon(FontAwesomeIcons.github),
                ),
                IconButton(
                  onPressed: () => signIn(OAuthProvider.azure),
                  icon: Icon(FontAwesomeIcons.microsoft),
                ),
                IconButton(
                  onPressed: () => signIn(OAuthProvider.discord),
                  icon: Icon(FontAwesomeIcons.discord),
                ),
              ],
            ),
          ],
        ),
      ),
    ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut);
  }
}
