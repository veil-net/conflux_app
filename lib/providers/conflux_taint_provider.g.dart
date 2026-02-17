// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_taint_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfluxTaint)
final confluxTaintProvider = ConfluxTaintFamily._();

final class ConfluxTaintProvider
    extends $AsyncNotifierProvider<ConfluxTaint, List<Taint>> {
  ConfluxTaintProvider._({
    required ConfluxTaintFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'confluxTaintProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confluxTaintHash();

  @override
  String toString() {
    return r'confluxTaintProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ConfluxTaint create() => ConfluxTaint();

  @override
  bool operator ==(Object other) {
    return other is ConfluxTaintProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confluxTaintHash() => r'76205b95fe682bd5cb35afaacfc0a07ed7ccadb4';

final class ConfluxTaintFamily extends $Family
    with
        $ClassFamilyOverride<
          ConfluxTaint,
          AsyncValue<List<Taint>>,
          List<Taint>,
          FutureOr<List<Taint>>,
          String
        > {
  ConfluxTaintFamily._()
    : super(
        retry: null,
        name: r'confluxTaintProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfluxTaintProvider call(String conflux_id) =>
      ConfluxTaintProvider._(argument: conflux_id, from: this);

  @override
  String toString() => r'confluxTaintProvider';
}

abstract class _$ConfluxTaint extends $AsyncNotifier<List<Taint>> {
  late final _$args = ref.$arg as String;
  String get conflux_id => _$args;

  FutureOr<List<Taint>> build(String conflux_id);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Taint>>, List<Taint>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Taint>>, List<Taint>>,
              AsyncValue<List<Taint>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
