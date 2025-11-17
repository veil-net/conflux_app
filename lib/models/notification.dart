import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  factory Notification({
    required String id,
    required DateTime created_at,
    required String title,
    required String message,
    required String type,
  }) = _Notification;
  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}