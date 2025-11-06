import 'package:conflux/main.dart';
import 'package:conflux/models/conflux_session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_session_provider.g.dart';

@riverpod
Stream<List<ConfluxSession>> confluxSessions(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('conflux_sessions')
      .stream(primaryKey: ['id'])
      .map(
        (event) =>
            event.map((data) => ConfluxSession.fromJson(data)).toList(),
      );
}

@riverpod
Stream<ConfluxSession?> confluxSession(Ref ref, String confluxId) {
  ref.keepAlive(); 
  final confluxSession = supabase
      .from('conflux_sessions')
      .stream(primaryKey: ['id'])
      .eq('id', confluxId)
      .limit(1)
      .map(
        (event) {
          return event.map((data) => ConfluxSession.fromJson(data)).toList().firstOrNull;
        },
      );
  return confluxSession;
}
