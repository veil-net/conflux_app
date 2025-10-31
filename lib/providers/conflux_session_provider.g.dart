// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(confluxSessions)
const confluxSessionsProvider = ConfluxSessionsProvider._();

final class ConfluxSessionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ConfluxSession>>,
          List<ConfluxSession>,
          Stream<List<ConfluxSession>>
        >
    with
        $FutureModifier<List<ConfluxSession>>,
        $StreamProvider<List<ConfluxSession>> {
  const ConfluxSessionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxSessionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxSessionsHash();

  @$internal
  @override
  $StreamProviderElement<List<ConfluxSession>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<ConfluxSession>> create(Ref ref) {
    return confluxSessions(ref);
  }
}

String _$confluxSessionsHash() => r'746b57eb4bed70c1370dc2ac44041f4e350084f8';

@ProviderFor(confluxSession)
const confluxSessionProvider = ConfluxSessionFamily._();

final class ConfluxSessionProvider
    extends
        $FunctionalProvider<
          AsyncValue<ConfluxSession>,
          ConfluxSession,
          Stream<ConfluxSession>
        >
    with $FutureModifier<ConfluxSession>, $StreamProvider<ConfluxSession> {
  const ConfluxSessionProvider._({
    required ConfluxSessionFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'confluxSessionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confluxSessionHash();

  @override
  String toString() {
    return r'confluxSessionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<ConfluxSession> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<ConfluxSession> create(Ref ref) {
    final argument = this.argument as String;
    return confluxSession(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfluxSessionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confluxSessionHash() => r'048c137e17f7da7362d7536fa61145614cc5beae';

final class ConfluxSessionFamily extends $Family
    with $FunctionalFamilyOverride<Stream<ConfluxSession>, String> {
  const ConfluxSessionFamily._()
    : super(
        retry: null,
        name: r'confluxSessionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfluxSessionProvider call(String confluxId) =>
      ConfluxSessionProvider._(argument: confluxId, from: this);

  @override
  String toString() => r'confluxSessionProvider';
}
