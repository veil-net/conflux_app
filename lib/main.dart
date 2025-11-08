import 'dart:developer';
import 'dart:io';

import 'package:conflux/pages/auth_callback_page.dart';
import 'package:conflux/pages/auth_page.dart';
import 'package:conflux/pages/main_page.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nabcgmuuviyfakyrhakv.supabase.co',
    anonKey: 'sb_publishable_c757oKzF-QNBms8a7TLWeQ_tOEm9Q3t',
  );
  try {
    switch (Platform.operatingSystem) {
      case 'windows':
        final byteData = await rootBundle.load(
          'assets/bin/windows/veilnet-conflux.exe',
        );
        final tempDir = await getTemporaryDirectory();
        final executable = File('${tempDir.path}/veilnet-conflux.exe');
        await executable.writeAsBytes(byteData.buffer.asUint8List());
        final process = await Process.start(executable.path, ['status']);
        final exitCode = await process.exitCode;
        if (exitCode != 0) {
          log('Veilnet Conflux not running, installing...');
          await Process.start(executable.path, ['remove']);
          await Process.start(executable.path, ['install']);
          log('Veilnet Conflux installed');
        } else {
          log('Veilnet Conflux already running');
        }
        break;
      case 'linux':
        final byteData = await rootBundle.load(
          'assets/bin/linux/veilnet-conflux',
        );
        final tempDir = await getTemporaryDirectory();
        final executable = File('${tempDir.path}/veilnet-conflux');
        await executable.writeAsBytes(byteData.buffer.asUint8List());
        final process = await Process.start(executable.path, ['status']);
        final exitCode = await process.exitCode;
        if (exitCode != 0) {
          log('Veilnet Conflux not running, installing...');
          await Process.start(executable.path, ['remove']);
          await Process.start(executable.path, ['install']);
          log('Veilnet Conflux installed');
        } else {
          log('Veilnet Conflux already running');
        }
        break;
      case 'macos':
        final byteData = await rootBundle.load(
          'assets/bin/macos/veilnet-conflux',
        );
        final tempDir = await getTemporaryDirectory();
        final executable = File('${tempDir.path}/veilnet-conflux');
        await executable.writeAsBytes(byteData.buffer.asUint8List());
        final process = await Process.start(executable.path, ['status']);
        final exitCode = await process.exitCode;
        if (exitCode != 0) {
          log('Veilnet Conflux not running, installing...');
          await Process.start(executable.path, ['remove']);
          await Process.start(executable.path, ['install']);
          log('Veilnet Conflux installed');
        } else {
          log('Veilnet Conflux already running');
        }
        break;
      default:
        break;
    }
  } catch (e) {
    log('Error starting Veilnet Conflux: $e');
  }
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
      redirect: (context, state) async {
        try {
          final session = supabase.auth.currentSession;
          if (session == null) {
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
      redirect: (context, state) async {
        try {
          final session = supabase.auth.currentSession;
          if (session == null) {
            return null;
          }
          return '/';
        } catch (e) {
          return null;
        }
      },
    ),
    GoRoute(
      path: '/callback',
      builder: (context, state) {
        final refreshToken = state.uri.queryParameters['refresh_token'] ?? '';
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
