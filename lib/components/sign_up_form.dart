import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpForm extends HookConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscurePassword = useState(true);
    final obscureConfirm = useState(true);
    final supabase = ref.read(supabaseClientProvider);
    final email = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);
    final isLoading = useState(false);

    Future<void> signUp() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        isLoading.value = true;
        await supabase.auth.signUp(
          email: email.text,
          password: password.text,
          emailRedirectTo: 'conflux://auth/callback',
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Check your email to confirm your account.',
              ),
            ),
          );
          context.go('/auth');
        }
      } on AuthException catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.message),
              backgroundColor: Theme.of(context).colorScheme.error,
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
      } finally {
        isLoading.value = false;
      }
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/Logo_H.png'),
              Text(
                'Create an account',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscurePassword.value = !obscurePassword.value;
                    },
                    icon: Icon(
                      obscurePassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscurePassword.value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: confirmPassword,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureConfirm.value = !obscureConfirm.value;
                    },
                    icon: Icon(
                      obscureConfirm.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureConfirm.value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != password.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: isLoading.value ? null : signUp,
                  child: isLoading.value
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      : const Text('Sign Up'),
                ),
              ),
              TextButton(
                onPressed: () => context.go('/auth'),
                child: const Text('Already have an account? Log in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
