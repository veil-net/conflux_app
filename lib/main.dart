import 'dart:io';

import 'package:conflux/providers/applinks_provider.dart';
import 'package:conflux/providers/router_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final router = ref.read(routerProvider);
    final appLinks = ref.read(appLinksProvider);
    appLinks.uriLinkStream.listen((uri) {

    });
    return MaterialApp.router(
      title: 'VeilNet Console',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 165, 233),
          primary: const Color.fromARGB(255, 14, 165, 233),
          secondary: const Color.fromARGB(255, 139, 92, 246),
          surface: const Color.fromARGB(255, 245, 245, 244),
          // surfaceContainerLowest: const Color.fromARGB(255, 245, 245, 244),
          // surfaceContainerLow: const Color.fromARGB(255, 231, 229, 228),
          // surfaceContainer: const Color.fromARGB(255, 214, 211, 209),
          // surfaceContainerHigh: const Color.fromARGB(255, 168, 162, 158),
          // surfaceContainerHighest: const Color.fromARGB(255, 120, 113, 108),
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 165, 233),
          primary: const Color.fromARGB(255, 14, 165, 233),
          secondary: const Color.fromARGB(255, 139, 92, 246),
          surface: const Color.fromARGB(255, 28, 25, 23),
          // surfaceContainerLowest: const Color.fromARGB(255, 28, 25, 23),
          // surfaceContainerLow: const Color.fromARGB(255, 41, 37, 36),
          // surfaceContainer: const Color.fromARGB(255, 68, 64, 60),
          // surfaceContainerHigh: const Color.fromARGB(255, 87, 83, 78),
          // surfaceContainerHighest: const Color.fromARGB(255, 120, 113, 108),
          brightness: Brightness.dark,
        ),
      ),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: router,
    );
  }
}
