// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(confluxDetails)
const confluxDetailsProvider = ConfluxDetailsFamily._();

final class ConfluxDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ConfluxDetails?>,
          ConfluxDetails?,
          FutureOr<ConfluxDetails?>
        >
    with $FutureModifier<ConfluxDetails?>, $FutureProvider<ConfluxDetails?> {
  const ConfluxDetailsProvider._({
    required ConfluxDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'confluxDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confluxDetailsHash();

  @override
  String toString() {
    return r'confluxDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ConfluxDetails?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ConfluxDetails?> create(Ref ref) {
    final argument = this.argument as String;
    return confluxDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfluxDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confluxDetailsHash() => r'd8606e2c3a3ed87ddc4630d580e433d9d560379b';

final class ConfluxDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ConfluxDetails?>, String> {
  const ConfluxDetailsFamily._()
    : super(
        retry: null,
        name: r'confluxDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfluxDetailsProvider call(String id) =>
      ConfluxDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'confluxDetailsProvider';
}

@ProviderFor(confluxRiftsDetails)
const confluxRiftsDetailsProvider = ConfluxRiftsDetailsProvider._();

final class ConfluxRiftsDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ConfluxDetails>>,
          List<ConfluxDetails>,
          FutureOr<List<ConfluxDetails>>
        >
    with
        $FutureModifier<List<ConfluxDetails>>,
        $FutureProvider<List<ConfluxDetails>> {
  const ConfluxRiftsDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxRiftsDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxRiftsDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<ConfluxDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ConfluxDetails>> create(Ref ref) {
    return confluxRiftsDetails(ref);
  }
}

String _$confluxRiftsDetailsHash() =>
    r'a2873c38d1a6ce276904958b25bc22051e9943b1';

@ProviderFor(confluxPortalsDetails)
const confluxPortalsDetailsProvider = ConfluxPortalsDetailsProvider._();

final class ConfluxPortalsDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ConfluxDetails>>,
          List<ConfluxDetails>,
          FutureOr<List<ConfluxDetails>>
        >
    with
        $FutureModifier<List<ConfluxDetails>>,
        $FutureProvider<List<ConfluxDetails>> {
  const ConfluxPortalsDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxPortalsDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxPortalsDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<ConfluxDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ConfluxDetails>> create(Ref ref) {
    return confluxPortalsDetails(ref);
  }
}

String _$confluxPortalsDetailsHash() =>
    r'7f9db6b33ef1082db39596b82713a5eba634dbf9';
