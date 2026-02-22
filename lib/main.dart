import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:conflux/pages/auth_page.dart';
import 'package:conflux/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:win32_registry/win32_registry.dart';

Future<void> register(String scheme) async {
  String appPath = Platform.resolvedExecutable;

  String protocolRegKey = 'Software\\Classes\\$scheme';
  RegistryValue protocolRegValue = RegistryValue.string('URL Protocol', '');
  String protocolCmdRegKey = 'shell\\open\\command';
  RegistryValue protocolCmdRegValue = RegistryValue.string(
    '',
    '"$appPath" "%1"',
  );

  final regKey = Registry.currentUser.createKey(protocolRegKey);
  regKey.createValue(protocolRegValue);
  regKey.createKey(protocolCmdRegKey).createValue(protocolCmdRegValue);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows) {
    await register('conflux');
  }

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Supabase.initialize(
    url: 'https://nabcgmuuviyfakyrhakv.supabase.co',
    anonKey: 'sb_publishable_c757oKzF-QNBms8a7TLWeQ_tOEm9Q3t',
  );

  appLinks.uriLinkStream.listen((uri) {});

  runApp(
    ProviderScope(
      child: ShadcnApp.router(
        title: 'Weave',
        routerConfig: router,
        theme: ThemeData(colorScheme: ColorSchemes.lightStone.cyan),
      ),
    ),
  );
}

final supabase = Supabase.instance.client;

final appLinks = AppLinks();

class AuthNotifier extends ChangeNotifier {
  Session? session;
  late final StreamSubscription<AuthState> subscription;
  AuthNotifier() {
    subscription = supabase.auth.onAuthStateChange.listen((event) {
      session = event.session;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}

final authNotifier = AuthNotifier();

final router = GoRouter(
  refreshListenable: authNotifier,
  initialLocation: '/',
  redirect: (context, state) {
    final session = authNotifier.session;
    final isAuthRoute = state.matchedLocation == '/auth';
    if (session == null && !isAuthRoute) return '/auth';
    if (session != null && isAuthRoute) return '/';
    return null;
  },
  routes: [
    GoRoute(path: '/auth', builder: (context, state) => const AuthPage()),
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
  ],
);
