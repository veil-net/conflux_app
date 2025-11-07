import 'package:freezed_annotation/freezed_annotation.dart';

part 'plane_details.freezed.dart';
part 'plane_details.g.dart';

@freezed
abstract class PlaneDetails with _$PlaneDetails {
  factory PlaneDetails({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String veil_id,
    required String name,
    required String subnet,
    required bool public,
    required String region,
    required String veil_host,
    required int veil_port,
    required int portals,
    String? team,
    String? subscription,
    String? status,
  }) = _PlaneDetails;

  factory PlaneDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaneDetailsFromJson(json);
}
