// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(confluxes)
const confluxesProvider = ConfluxesProvider._();

final class ConfluxesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conflux>>,
          List<Conflux>,
          Stream<List<Conflux>>
        >
    with $FutureModifier<List<Conflux>>, $StreamProvider<List<Conflux>> {
  const ConfluxesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxesHash();

  @$internal
  @override
  $StreamProviderElement<List<Conflux>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Conflux>> create(Ref ref) {
    return confluxes(ref);
  }
}

String _$confluxesHash() => r'3137e8cac0cee119718c76baab55b7c01ae5c4a5';

@ProviderFor(confluxByID)
const confluxByIDProvider = ConfluxByIDFamily._();

final class ConfluxByIDProvider
    extends
        $FunctionalProvider<AsyncValue<Conflux?>, Conflux?, Stream<Conflux?>>
    with $FutureModifier<Conflux?>, $StreamProvider<Conflux?> {
  const ConfluxByIDProvider._({
    required ConfluxByIDFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'confluxByIDProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confluxByIDHash();

  @override
  String toString() {
    return r'confluxByIDProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Conflux?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Conflux?> create(Ref ref) {
    final argument = this.argument as String;
    return confluxByID(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfluxByIDProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confluxByIDHash() => r'3b44f28b85736040f767f3af323539b3edb66cbc';

final class ConfluxByIDFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Conflux?>, String> {
  const ConfluxByIDFamily._()
    : super(
        retry: null,
        name: r'confluxByIDProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfluxByIDProvider call(String id) =>
      ConfluxByIDProvider._(argument: id, from: this);

  @override
  String toString() => r'confluxByIDProvider';
}
