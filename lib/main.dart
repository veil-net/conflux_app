import 'package:conflux/pages/auth_callback_page.dart';
import 'package:conflux/pages/auth_page.dart';
import 'package:conflux/pages/main_page.dart';
import 'package:conflux/pages/notification_page.dart';
import 'package:conflux/pages/organisation_page.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nabcgmuuviyfakyrhakv.supabase.co',
    anonKey: 'sb_publishable_c757oKzF-QNBms8a7TLWeQ_tOEm9Q3t',
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

final supabase = Supabase.instance.client;

class AuthStateListenable extends ChangeNotifier {
  AuthStateListenable() {
    supabase.auth.onAuthStateChange.listen((event) {
      notifyListeners();
    });
  }
}

final router = GoRouter(
  initialLocation: '/auth',
  refreshListenable: AuthStateListenable(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
      redirect: (context, state) {
        try {
          final user = supabase.auth.currentUser;
          if (user == null) {
            return '/auth';
          }
          return null;
        } catch (e) {
          return '/auth';
        }
      },
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
      redirect: (context, state) {
        try {
          final user = supabase.auth.currentUser;
          if (user == null) {
            return null;
          }
          return '/';
        } catch (e) {
          return null;
        }
      },
    ),
    GoRoute(
      path: '/notification',
      builder: (context, state) => NotificationPage(),
      redirect: (context, state) {
        try {
          final user = supabase.auth.currentUser;
          if (user == null) {
            return '/auth';
          }
          return null;
        } catch (e) {
          return '/auth';
        }
      },
    ),
    GoRoute(
      path: '/organisation',
      builder: (context, state) => OrganisationPage(),
      redirect: (context, state) {
        try {
          final user = supabase.auth.currentUser;
          if (user == null) {
            return '/auth';
          }
          return null;
        } catch (e) {
          return '/auth';
        }
      },
    ),
    GoRoute(
      path: '/callback',
      builder: (context, state) {
        final refreshToken =
            state.uri.queryParameters['refresh_token'] ??
            Uri.splitQueryString(state.uri.fragment)['refresh_token'] ??
            '';
        return AuthCallbackPage(refreshToken: refreshToken);
      },
    ),
  ],
);

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      title: 'VeilNet Console',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 165, 233),
          primary: const Color.fromARGB(255, 14, 165, 233),
          secondary: const Color.fromARGB(255, 139, 92, 246),
          surface: const Color.fromARGB(255, 245, 245, 244),
          surfaceContainerLowest: const Color.fromARGB(255, 245, 245, 244),
          surfaceContainerLow: const Color.fromARGB(255, 231, 229, 228),
          surfaceContainer: const Color.fromARGB(255, 214, 211, 209),
          surfaceContainerHigh: const Color.fromARGB(255, 168, 162, 158),
          surfaceContainerHighest: const Color.fromARGB(255, 120, 113, 108),
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 165, 233),
          primary: const Color.fromARGB(255, 14, 165, 233),
          secondary: const Color.fromARGB(255, 139, 92, 246),
          surface: const Color.fromARGB(255, 28, 25, 23),
          surfaceContainerLowest: const Color.fromARGB(255, 28, 25, 23),
          surfaceContainerLow: const Color.fromARGB(255, 41, 37, 36),
          surfaceContainer: const Color.fromARGB(255, 68, 64, 60),
          surfaceContainerHigh: const Color.fromARGB(255, 87, 83, 78),
          surfaceContainerHighest: const Color.fromARGB(255, 120, 113, 108),
          brightness: Brightness.dark,
        ),
      ),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: router,
    );
  }
}
