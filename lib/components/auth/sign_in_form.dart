import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:conflux/components/toast.dart';
import 'package:conflux/main.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final emailKey = const TextFieldKey('email');
    final passwordKey = const TextFieldKey('password');
    return Card(
      child: Form(
        onSubmit: (context, values) async {
          try {
            String? email = emailKey[values];
            String? password = passwordKey[values];
            await supabase.auth.signInWithPassword(
              email: email,
              password: password!,
            );
          } catch (e) {
            if (context.mounted) {
              toast(context, 'Error', 'Failed to sign in', ToastType.error);
            }
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Sign in').large().bold()],
            ),
            Divider(height: 16),
            FormField<String>(
              key: emailKey,
              label: Text('Email'),
              validator: const EmailValidator(message: 'Invalid email'),
              showErrors: {FormValidationMode.submitted},
              child: TextField(
                placeholder: Text('Enter your email').muted().small(),
              ),
            ),
            FormField<String>(
              key: passwordKey,
              label: Text('Password'),
              validator: const NonNullValidator(
                message: 'Password is required',
              ),
              showErrors: {FormValidationMode.submitted},
              child: TextField(
                placeholder: Text('Enter your password').muted().small(),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LinkButton(
                  onPressed: () {},
                  child: Text('Forgot password?').muted().small(),
                ),
                const SubmitButton(
                  loading: CircularProgressIndicator(),
                  child: Text('Sign in'),
                ),
              ],
            ),
            Divider(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinkButton(
                  onPressed: () {},
                  child: Text('Don\'t have an account? Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
