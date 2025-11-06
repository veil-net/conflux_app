// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Subscriptions)
const subscriptionsProvider = SubscriptionsProvider._();

final class SubscriptionsProvider
    extends $StreamNotifierProvider<Subscriptions, List<Subscription>> {
  const SubscriptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subscriptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subscriptionsHash();

  @$internal
  @override
  Subscriptions create() => Subscriptions();
}

String _$subscriptionsHash() => r'ff87166b3212ed83d59336223e96056223921b35';

abstract class _$Subscriptions extends $StreamNotifier<List<Subscription>> {
  Stream<List<Subscription>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Subscription>>, List<Subscription>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Subscription>>, List<Subscription>>,
              AsyncValue<List<Subscription>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(confluxSubscription)
const confluxSubscriptionProvider = ConfluxSubscriptionProvider._();

final class ConfluxSubscriptionProvider
    extends
        $FunctionalProvider<
          AsyncValue<Subscription?>,
          Subscription?,
          FutureOr<Subscription?>
        >
    with $FutureModifier<Subscription?>, $FutureProvider<Subscription?> {
  const ConfluxSubscriptionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxSubscriptionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxSubscriptionHash();

  @$internal
  @override
  $FutureProviderElement<Subscription?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Subscription?> create(Ref ref) {
    return confluxSubscription(ref);
  }
}

String _$confluxSubscriptionHash() =>
    r'9e09cad6b2542932731c00ac987f0b6007de4822';

@ProviderFor(planeSubscriptions)
const planeSubscriptionsProvider = PlaneSubscriptionsProvider._();

final class PlaneSubscriptionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Subscription>>,
          List<Subscription>,
          FutureOr<List<Subscription>>
        >
    with
        $FutureModifier<List<Subscription>>,
        $FutureProvider<List<Subscription>> {
  const PlaneSubscriptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'planeSubscriptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$planeSubscriptionsHash();

  @$internal
  @override
  $FutureProviderElement<List<Subscription>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Subscription>> create(Ref ref) {
    return planeSubscriptions(ref);
  }
}

String _$planeSubscriptionsHash() =>
    r'c1783e51a829d52e04c7ac0da48085375816ce1b';
