import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflux.freezed.dart';
part 'conflux.g.dart';

@freezed
abstract class Conflux with _$Conflux {
  factory Conflux({
    required String id,
    required DateTime created_at,
    DateTime? last_seen,
    required String user_id,
    String? tag,
    String? signature,
    String? cidr,
    required String subnet,
    required String realm,
    required String realm_id,
    bool? rift,
    bool? portal,
    required String region,
    required String veil_host,
    required int veil_port,
  }) = _Conflux;

  factory Conflux.fromJson(Map<String, dynamic> json) =>
      _$ConfluxFromJson(json);
}


@freezed
abstract class Taint with _$Taint {
  factory Taint({
    required String taint,
  }) = _Taint;
  factory Taint.fromJson(Map<String, dynamic> json) => _$TaintFromJson(json);
}