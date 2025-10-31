import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflux.g.dart';
part 'conflux.freezed.dart';

@freezed
abstract class Conflux with _$Conflux {
  factory Conflux({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String plane_id,
    required String name,
    String? tag,
    required bool portal,
  }) = _Conflux;

  factory Conflux.fromJson(Map<String, dynamic> json) => _$ConfluxFromJson(json);
}