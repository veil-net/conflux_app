import 'package:freezed_annotation/freezed_annotation.dart';

part 'veil.g.dart';
part 'veil.freezed.dart';

@freezed
abstract class Veil with _$Veil {
  factory Veil({
    required String id,
    required DateTime created_at,
    required String name,
    required String region,
    required String host,
    required int port,
    required bool public,
  }) = _Veil;

  factory Veil.fromJson(Map<String, dynamic> json) => _$VeilFromJson(json);
}
