import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preference_provider.g.dart';

@riverpod
class Preferences extends _$Preferences {
  @override
  Future<SharedPreferences> build() async {
    ref.keepAlive();
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  }
}