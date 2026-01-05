// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particle_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PrimaryParticles)
final primaryParticlesProvider = PrimaryParticlesFamily._();

final class PrimaryParticlesProvider
    extends $NotifierProvider<PrimaryParticles, List<Particle>> {
  PrimaryParticlesProvider._({
    required PrimaryParticlesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'primaryParticlesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$primaryParticlesHash();

  @override
  String toString() {
    return r'primaryParticlesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PrimaryParticles create() => PrimaryParticles();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Particle> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Particle>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PrimaryParticlesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$primaryParticlesHash() => r'04610218361d5fb23dff4fc449aa4a0a912ce13b';

final class PrimaryParticlesFamily extends $Family
    with
        $ClassFamilyOverride<
          PrimaryParticles,
          List<Particle>,
          List<Particle>,
          List<Particle>,
          int
        > {
  PrimaryParticlesFamily._()
    : super(
        retry: null,
        name: r'primaryParticlesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PrimaryParticlesProvider call(int count) =>
      PrimaryParticlesProvider._(argument: count, from: this);

  @override
  String toString() => r'primaryParticlesProvider';
}

abstract class _$PrimaryParticles extends $Notifier<List<Particle>> {
  late final _$args = ref.$arg as int;
  int get count => _$args;

  List<Particle> build(int count);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<Particle>, List<Particle>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Particle>, List<Particle>>,
              List<Particle>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(SecondaryParticles)
final secondaryParticlesProvider = SecondaryParticlesFamily._();

final class SecondaryParticlesProvider
    extends $NotifierProvider<SecondaryParticles, List<Particle>> {
  SecondaryParticlesProvider._({
    required SecondaryParticlesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'secondaryParticlesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$secondaryParticlesHash();

  @override
  String toString() {
    return r'secondaryParticlesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SecondaryParticles create() => SecondaryParticles();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Particle> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Particle>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SecondaryParticlesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$secondaryParticlesHash() =>
    r'f827266d155ffdbbee743a5963bcc12d8df796de';

final class SecondaryParticlesFamily extends $Family
    with
        $ClassFamilyOverride<
          SecondaryParticles,
          List<Particle>,
          List<Particle>,
          List<Particle>,
          int
        > {
  SecondaryParticlesFamily._()
    : super(
        retry: null,
        name: r'secondaryParticlesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SecondaryParticlesProvider call(int count) =>
      SecondaryParticlesProvider._(argument: count, from: this);

  @override
  String toString() => r'secondaryParticlesProvider';
}

abstract class _$SecondaryParticles extends $Notifier<List<Particle>> {
  late final _$args = ref.$arg as int;
  int get count => _$args;

  List<Particle> build(int count);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<Particle>, List<Particle>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Particle>, List<Particle>>,
              List<Particle>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
