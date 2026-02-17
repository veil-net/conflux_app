import 'package:conflux/pages/auth_page.dart';
import 'package:conflux/pages/main_page.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  ref.keepAlive();
  final supabase = ref.read(supabaseClientProvider);
  return GoRouter(
    initialLocation: '/auth',
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
    ],
  );
}
