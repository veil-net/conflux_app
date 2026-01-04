import 'package:freezed_annotation/freezed_annotation.dart';

part 'realm_details.freezed.dart';
part 'realm_details.g.dart';

@freezed
abstract class RealmDetails with _$RealmDetails {
  factory RealmDetails({
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
  }) = _RealmDetails;

  factory RealmDetails.fromJson(Map<String, dynamic> json) =>
      _$RealmDetailsFromJson(json);
}
