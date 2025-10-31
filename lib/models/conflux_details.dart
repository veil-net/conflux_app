import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflux_details.freezed.dart';
part 'conflux_details.g.dart';

@freezed
abstract class ConfluxDetails with _$ConfluxDetails {
  factory ConfluxDetails({
    required String id,
    required DateTime created_at,
    required DateTime last_seen,
    required String user_id,
    String? tag,
    String? signature,
    String? cidr,
    required String subnet,
    required String plane,
    required String plane_id,
    required bool public,
    required bool portal,
    required String region,
    required String veil_host,
    required int veil_port,
  }) = _ConfluxDetails;

  factory ConfluxDetails.fromJson(Map<String, dynamic> json) => _$ConfluxDetailsFromJson(json);
}
