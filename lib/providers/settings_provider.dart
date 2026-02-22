import 'package:conflux/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    ref.keepAlive();
    final prefs = ref.watch(preferencesProvider);
    final darkMode = prefs.when(
      data: (value) {
        return value.getBool('dark_mode') ?? false;
      },
      loading: () {
        return false;
      },
      error: (error, stackTrace) {
        return false;
      },
    );
    return darkMode;
  }

  Future<void> setDarkMode(bool value) async {
    final prefs = await ref.watch(preferencesProvider.future);
    await prefs.setBool('dark_mode', value);
    ref.invalidateSelf();
  }
}
