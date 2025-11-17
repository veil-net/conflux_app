// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(notifications)
const notificationsProvider = NotificationsProvider._();

final class NotificationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Notification>>,
          List<Notification>,
          Stream<List<Notification>>
        >
    with
        $FutureModifier<List<Notification>>,
        $StreamProvider<List<Notification>> {
  const NotificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsHash();

  @$internal
  @override
  $StreamProviderElement<List<Notification>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Notification>> create(Ref ref) {
    return notifications(ref);
  }
}

String _$notificationsHash() => r'8b3c61e056201c98136ce5781028a2d9dc69dcd4';
