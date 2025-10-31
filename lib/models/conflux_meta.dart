import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflux_meta.freezed.dart';
part 'conflux_meta.g.dart';

@freezed
abstract class ConfluxMeta with _$ConfluxMeta {
  factory ConfluxMeta({
    required String id,
    required DateTime last_seen,
    required String user_id,
  }) = _ConfluxMeta;

  factory ConfluxMeta.fromJson(Map<String, dynamic> json) => _$ConfluxMetaFromJson(json);
}
