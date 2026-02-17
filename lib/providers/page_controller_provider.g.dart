// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pageController)
final pageControllerProvider = PageControllerProvider._();

final class PageControllerProvider
    extends
        $FunctionalProvider<
          Raw<PageController>,
          Raw<PageController>,
          Raw<PageController>
        >
    with $Provider<Raw<PageController>> {
  PageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageControllerHash();

  @$internal
  @override
  $ProviderElement<Raw<PageController>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Raw<PageController> create(Ref ref) {
    return pageController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<PageController> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<PageController>>(value),
    );
  }
}

String _$pageControllerHash() => r'7a8d1760d17ec41748bb24be997ec523cffc982f';

@ProviderFor(CurrentPageIndex)
final currentPageIndexProvider = CurrentPageIndexProvider._();

final class CurrentPageIndexProvider
    extends $NotifierProvider<CurrentPageIndex, int> {
  CurrentPageIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentPageIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentPageIndexHash();

  @$internal
  @override
  CurrentPageIndex create() => CurrentPageIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$currentPageIndexHash() => r'613edb824ba6a0083b5db812a51580e18e90e8d6';

abstract class _$CurrentPageIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
