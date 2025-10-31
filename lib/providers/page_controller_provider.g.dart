// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pageController)
const pageControllerProvider = PageControllerProvider._();

final class PageControllerProvider
    extends
        $FunctionalProvider<
          Raw<PageController>,
          Raw<PageController>,
          Raw<PageController>
        >
    with $Provider<Raw<PageController>> {
  const PageControllerProvider._()
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

@ProviderFor(CurrentPage)
const currentPageProvider = CurrentPageProvider._();

final class CurrentPageProvider extends $NotifierProvider<CurrentPage, int> {
  const CurrentPageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentPageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentPageHash();

  @$internal
  @override
  CurrentPage create() => CurrentPage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$currentPageHash() => r'1fc060a78c6ef5efc22019acb0813c0df2f7e812';

abstract class _$CurrentPage extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
