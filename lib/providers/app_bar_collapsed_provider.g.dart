// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bar_collapsed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppBarCollapsed)
const appBarCollapsedProvider = AppBarCollapsedProvider._();

final class AppBarCollapsedProvider
    extends $NotifierProvider<AppBarCollapsed, bool> {
  const AppBarCollapsedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appBarCollapsedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appBarCollapsedHash();

  @$internal
  @override
  AppBarCollapsed create() => AppBarCollapsed();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$appBarCollapsedHash() => r'c635fff1b924027df1f5689d80245352898a5fec';

abstract class _$AppBarCollapsed extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
