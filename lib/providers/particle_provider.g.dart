// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particle_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Particles)
const particlesProvider = ParticlesProvider._();

final class ParticlesProvider
    extends $NotifierProvider<Particles, List<Particle>> {
  const ParticlesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'particlesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$particlesHash();

  @$internal
  @override
  Particles create() => Particles();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Particle> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Particle>>(value),
    );
  }
}

String _$particlesHash() => r'6c0fb8f1a3bba32bad67433bdc10e1d0b06f11b7';

abstract class _$Particles extends $Notifier<List<Particle>> {
  List<Particle> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Particle>, List<Particle>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Particle>, List<Particle>>,
              List<Particle>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
