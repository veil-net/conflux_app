import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preference_provider.g.dart';

@riverpod
Future<SharedPreferences> preference(Ref ref) async {
  ref.keepAlive();
  final prefs = await SharedPreferences.getInstance();
  return prefs;
}
