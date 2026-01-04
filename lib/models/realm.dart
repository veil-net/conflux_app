import 'package:freezed_annotation/freezed_annotation.dart';

part 'realm.g.dart';
part 'realm.freezed.dart';

@freezed
abstract class Realm with _$Realm {
  factory Realm({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String veil_id,
    required String name,
    required String subnet,
    required bool public,
    required int portals,
    String? subscription,
  }) = _Realm;

  factory Realm.fromJson(Map<String, dynamic> json) => _$RealmFromJson(json);
}