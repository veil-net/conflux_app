import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:conflux/components/app_background.dart';
import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signIn() async {
      if (Platform.isWindows) {
        await launchUrl(
          Uri.parse('https://auth.veilnet.app/?platform=windows'),
        );
        final Completer authResult = Completer<bool>();
        var authServer = await HttpServer.bind(
          InternetAddress.loopbackIPv4,
          3000,
        );
        authServer.listen((request) async {
          request.response.headers.add('Access-Control-Allow-Origin', '*');
          request.response.headers.add(
            'Access-Control-Allow-Methods',
            'GET, POST, OPTIONS',
          );
          request.response.headers.add(
            'Access-Control-Allow-Headers',
            'Content-Type',
          );

          // Handle preflight OPTIONS request
          if (request.method == 'OPTIONS') {
            request.response.statusCode = 200;
            request.response.close();
            return;
          }

          switch (request.uri.path) {
            case '/auth/callback':
              final refreshToken =
                  request.uri.queryParameters['refresh_token'] ?? '';
              try {
                await supabase.auth.setSession(refreshToken);
                authResult.complete(true);
                request.response.statusCode = 200;
                request.response.write('Authentication successful');
              } on AuthException catch (e) {
                authResult.complete(false);
                request.response.statusCode = 401;
                request.response.write('Authentication failed: ${e.message}');
                if (context.mounted) {
                  DialogManager.showDialog(
                    context,
                    e.message,
                    DialogType.error,
                  );
                }
              }
              request.response.close();
              break;
            default:
              request.response.statusCode = 404;
              request.response.close();
              break;
          }
        });
        final authenticated = await authResult.future;
        log('Authentication result: $authenticated');
        authServer.close();
        log('Auth server closed');
        if (authenticated) {
          if (context.mounted) {
            context.go('/');
          }
        }
      }
      if (Platform.isAndroid) {
        await launchUrl(
          Uri.parse('https://auth.veilnet.app/?platform=android'),
        );
      }
    }

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
                  AppButton(
                    expand: true,
                    label: 'Sign in',
                    onPressed: signIn,
                  ).animate().slideY(
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
                  AppButton(
                    expand: true,
                    outline: true,
                    label: 'Sign Up',
                    onPressed: () async {
                      await launchUrl(
                        Uri.parse('https://auth.veilnet.app/sign-up'),
                      );
                    },
                  ).animate().slideY(
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
