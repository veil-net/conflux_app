import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscurePassword = useState(true);
    final supabase = ref.read(supabaseClientProvider);
    final email = useTextEditingController();
    final password = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);
    final isLoading = useState(false);

    Future<void> signIn() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        isLoading.value = true;
        await supabase.auth.signInWithPassword(
          email: email.text,
          password: password.text,
        );
        if (context.mounted) {
          context.go('/');
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
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/Logo_H.png'),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
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
                  prefixIcon: Icon(Icons.lock),
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
                  return null;
                },
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: isLoading.value ? null : signIn,
                    child: isLoading.value
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          )
                        : Text('Login'),
                  ),
                ),
              ),

              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      context.go('/auth/forgot-password');
                    },
                    child: Text('Forgot Password?'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/auth/register');
                    },
                    child: Text('Sign up with VeilNet'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
