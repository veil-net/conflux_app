import 'package:conflux/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    ref.keepAlive();
    final prefs = ref.watch(preferenceProvider);
    return prefs.when(
      data: (value) {
        return value.getBool('dark_mode') ?? false;
      },
      error: (error, stackTrace) {
        return false;
      },
      loading: () {
        return false;
      },
    );
  }

  Future<void> setDarkMode(bool value) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setBool('dark_mode', value);
    ref.invalidateSelf();
  }
}

@riverpod
class DeveloperMode extends _$DeveloperMode {
  @override
  bool build() {
    ref.keepAlive();
    final prefs = ref.watch(preferenceProvider);
    return prefs.when(
      data: (value) {
        return value.getBool('developer_mode') ?? false;
      },
      error: (error, stackTrace) {
        return false;
      },
      loading: () {
        return false;
      },
    );
  }

  Future<void> setDeveloperMode(bool value) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setBool('developer_mode', value);
    ref.invalidateSelf();
  }
}