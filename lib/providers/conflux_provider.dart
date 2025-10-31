import 'package:conflux/main.dart';
import 'package:conflux/models/conflux.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_provider.g.dart';

@riverpod
Stream<List<Conflux>> confluxes(Ref ref) {
  ref.keepAlive();
  final confluxes = supabase
      .from('conflux')
      .stream(primaryKey: ['id'])
      .map((event) => event.map((data) => Conflux.fromJson(data)).toList());
  return confluxes;
}

@riverpod
Stream<Conflux?> confluxByID(Ref ref, String id) {
  ref.keepAlive();
  final conflux = supabase
      .from('conflux')
      .stream(primaryKey: ['id'])
      .eq('id', id)
      .limit(1)
      .map((event) {
        return event.map((data) => Conflux.fromJson(data)).toList().firstOrNull;
      });
  return conflux;
}
