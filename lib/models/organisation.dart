import 'package:freezed_annotation/freezed_annotation.dart';

part 'organisation.freezed.dart';
part 'organisation.g.dart';

@freezed
abstract class Organisation with _$Organisation {
  factory Organisation({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String name,
    String? email,
    String? website,
  }) = _Organisation;

  factory Organisation.fromJson(Map<String, dynamic> json) => _$OrganisationFromJson(json);
}