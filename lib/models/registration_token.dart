import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_token.freezed.dart';
part 'registration_token.g.dart';

@freezed
abstract class RegistrationToken with _$RegistrationToken {
  factory RegistrationToken({
    required DateTime created_at,
    required String user_id,
    required String plane_id,
    required String token_hash,
    required DateTime expires_at,
    required String token_id,
    required String? tag,
  }) = _RegistrationToken;

  factory RegistrationToken.fromJson(Map<String, dynamic> json) => _$RegistrationTokenFromJson(json);
}