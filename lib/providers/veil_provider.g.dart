// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veil_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(veils)
final veilsProvider = VeilsProvider._();

final class VeilsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Veil>>,
          List<Veil>,
          Stream<List<Veil>>
        >
    with $FutureModifier<List<Veil>>, $StreamProvider<List<Veil>> {
  VeilsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'veilsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$veilsHash();

  @$internal
  @override
  $StreamProviderElement<List<Veil>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Veil>> create(Ref ref) {
    return veils(ref);
  }
}

String _$veilsHash() => r'968d0d11c7eef2bcb4e37704d70e6f54922d0436';

@ProviderFor(veil)
final veilProvider = VeilFamily._();

final class VeilProvider
    extends $FunctionalProvider<AsyncValue<Veil?>, Veil?, Stream<Veil?>>
    with $FutureModifier<Veil?>, $StreamProvider<Veil?> {
  VeilProvider._({
    required VeilFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'veilProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$veilHash();

  @override
  String toString() {
    return r'veilProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Veil?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Veil?> create(Ref ref) {
    final argument = this.argument as String;
    return veil(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VeilProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$veilHash() => r'7685bd5332f04ba4331b7f9efd59d2c48af42238';

final class VeilFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Veil?>, String> {
  VeilFamily._()
    : super(
        retry: null,
        name: r'veilProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VeilProvider call(String name) => VeilProvider._(argument: name, from: this);

  @override
  String toString() => r'veilProvider';
}
