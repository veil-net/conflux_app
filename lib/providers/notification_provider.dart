import 'package:conflux/main.dart';
import 'package:conflux/models/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
Stream<List<Notification>> notifications(Ref ref) {
  ref.keepAlive();
  return supabase
      .from('notifications')
      .stream(primaryKey: ['id'])
      .order('created_at', ascending: false)
      .map(
        (event) => event.map((data) => Notification.fromJson(data)).toList(),
      );
}
