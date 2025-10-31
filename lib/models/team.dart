import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.g.dart';
part 'team.freezed.dart';

@freezed
abstract class Team with _$Team {
  factory Team({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String organisation_id,
    required String name,
    required String? email,
    String? plane_id,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}