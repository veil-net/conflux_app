import 'package:freezed_annotation/freezed_annotation.dart';

part 'plane.g.dart';
part 'plane.freezed.dart';

@freezed
abstract class Plane with _$Plane {
  factory Plane({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String veil_id,
    required String name,
    required String subnet,
    required bool public,
    required int portals,
    String? subscription,
  }) = _Plane;

  factory Plane.fromJson(Map<String, dynamic> json) => _$PlaneFromJson(json);
}