import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/components/app_text_input.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum FormType { signIn, signUp }

class SignInUpForm extends HookConsumerWidget {
  const SignInUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formType = useState<FormType>(FormType.signIn);
    return AnimatedSize(
      duration: 250.milliseconds,
      curve: Curves.easeInOut,
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: SegmentedButton<FormType>(
                  style: SegmentedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment<FormType>(
                      value: FormType.signIn,
                      label: Text('Sign In'),
                    ),
                    ButtonSegment<FormType>(
                      value: FormType.signUp,
                      label: Text('Sign Up'),
                    ),
                  ],
                  selected: {formType.value},
                  onSelectionChanged: (Set<FormType> selected) {
                    formType.value = selected.first;
                  },
                ),
              ),
              if (formType.value == FormType.signIn) SignInForm(),
              if (formType.value == FormType.signUp) SignUpForm(),
            ],
          ),
        ),
      ).animate().slideY(duration: 250.milliseconds, curve: Curves.easeInOut),
    );
  }
}

class SignInForm extends HookConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabase = ref.read(supabaseClientProvider);
    final email = useTextEditingController();
    final password = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);

    Future<void> signIn() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        await supabase.auth.signInWithPassword(
          email: email.text,
          password: password.text,
        );
      } on AuthException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.message, DialogType.error);
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextInput(
            label: 'Email',
            controller: email,
            hint: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            readOnly: false,
            enable: true,
            prefixIcon: Icons.email,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              // Email validation regex pattern
              final emailRegex = RegExp(
                r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
              );
              if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          AppTextInput(
            label: 'Password',
            controller: password,
            hint: 'Enter your password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            readOnly: false,
            enable: true,
            prefixIcon: Icons.lock,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
              return null;
            },
          ),
          AppButton(label: 'Sign In', onPressed: signIn, expand: true),
          TextButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://console.veilnet.app/password/reset'),
              );
            },
            child: Text('Forgot Password?'),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends HookConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final token = useTextEditingController();
    final obscurePassword = useState(true);
    final tokenSent = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);

    Future<void> signUp() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        final supabase = ref.read(supabaseClientProvider);
        await supabase.auth.signUp(email: email.text, password: password.text);
        tokenSent.value = true;
      } on AuthException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.message, DialogType.error);
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> resendToken() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        final supabase = ref.read(supabaseClientProvider);
        await supabase.auth.signInWithOtp(email: email.text);
        tokenSent.value = true;
      } on AuthException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.message, DialogType.error);
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    Future<void> verifyToken() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        final supabase = ref.read(supabaseClientProvider);
        await supabase.auth.verifyOTP(
          email: email.text,
          token: token.text,
          type: OtpType.email,
        );
      } on AuthException catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.message, DialogType.error);
        }
      } catch (e) {
        if (context.mounted) {
          DialogManager.showDialog(context, e.toString(), DialogType.error);
        }
      }
    }

    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tokenSent.value)
            Text(
              'If a account already exists with this email, you will not receive a verification token to continue.',
            ),
          AppTextInput(
            label: 'Email',
            controller: email,
            hint: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            readOnly: tokenSent.value,
            enable: true,
            prefixIcon: Icons.email,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              // Email validation regex pattern
              final emailRegex = RegExp(
                r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
              );
              if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          if (!tokenSent.value)
            AppTextInput(
              label: 'Password',
              controller: password,
              hint: 'Enter your password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscurePassword.value,
              readOnly: false,
              enable: true,
              prefixIcon: Icons.lock,
              suffixIcon: obscurePassword.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              onSuffixIconPressed: () {
                obscurePassword.value = !obscurePassword.value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            ),
          if (!tokenSent.value)
            AppTextInput(
              label: 'Confirm Password',
              controller: confirmPassword,
              hint: 'Confirm your password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscurePassword.value,
              readOnly: false,
              enable: true,
              prefixIcon: Icons.lock,
              suffixIcon: obscurePassword.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              onSuffixIconPressed: () {
                obscurePassword.value = !obscurePassword.value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Confirm password is required';
                }
                if (value != password.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
          if (tokenSent.value)
            AppTextInput(
              label: 'Token',
              controller: token,
              hint: 'Enter the token sent to your email',
              keyboardType: TextInputType.number,
              obscureText: false,
              readOnly: false,
              enable: true,
              prefixIcon: Icons.confirmation_num,
            ),
          if (!tokenSent.value)
            AppButton(label: 'Sign Up', onPressed: signUp, expand: true),
          if (tokenSent.value)
            AppButton(
              label: 'Verify Token',
              onPressed: verifyToken,
              expand: true,
            ),
          if (tokenSent.value)
            AppButton(
              label: 'Resend Token',
              onPressed: resendToken,
              expand: true,
              outline: true,
            ),

          TextButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://console.veilnet.app/password/reset'),
              );
            },
            child: Text('Forgot Password?'),
          ),
        ],
      ),
    );
  }
}
