// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'title': instance.title,
      'message': instance.message,
      'type': instance.type,
    };
