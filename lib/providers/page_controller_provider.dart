import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_controller_provider.g.dart';

@riverpod
Raw<PageController> pageController(Ref ref) {
  ref.keepAlive();
  return PageController();
}

@riverpod
class CurrentPageIndex extends _$CurrentPageIndex {
  @override
  int build() {
    ref.keepAlive();
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }
}