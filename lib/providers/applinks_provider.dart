import 'package:app_links/app_links.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'applinks_provider.g.dart';

@riverpod
AppLinks appLinks(Ref ref) {
  ref.keepAlive();
  return AppLinks();
}