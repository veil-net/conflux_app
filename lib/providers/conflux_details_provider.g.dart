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

String _$confluxDetailsHash() => r'317b5effd482f861dffbc178db6baf5daddb3bc3';

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
