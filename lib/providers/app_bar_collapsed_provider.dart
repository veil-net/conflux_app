import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_bar_collapsed_provider.g.dart';

@riverpod
class AppBarCollapsed extends _$AppBarCollapsed {
  @override
  bool build() {
    ref.keepAlive();
    return false;
  }

  void setCollapsed(bool collapsed) {
    state = collapsed;
  }
}
