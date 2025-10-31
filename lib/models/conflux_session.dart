import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflux_session.freezed.dart';
part 'conflux_session.g.dart';

@freezed
abstract class ConfluxSession with _$ConfluxSession {
  factory ConfluxSession({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String signature,
  }) = _ConfluxSession;

  factory ConfluxSession.fromJson(Map<String, dynamic> json) => _$ConfluxSessionFromJson(json);
}
