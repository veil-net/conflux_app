import 'package:conflux/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'current_session_provider.g.dart';

@riverpod
class CurrentSession extends _$CurrentSession {
  @override
  Session? build() {
    ref.keepAlive();
    final supabase = ref.read(supabaseClientProvider);
    final sub = supabase.auth.onAuthStateChange.listen((event) {
      state = event.session;
    });
    ref.onDispose(() => sub.cancel());
    return supabase.auth.currentSession;
  }
}
