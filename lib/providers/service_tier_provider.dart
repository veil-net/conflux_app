import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/subscription_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_tier_provider.g.dart';

@riverpod
Future<int> serviceTier(Ref ref) async {
  ref.keepAlive();
  ref.watch(currentUserProvider);
  final confluxSubscription = await ref.watch(
    confluxSubscriptionProvider.future,
  );
  if (confluxSubscription == null) {
    return 0;
  }
  return int.parse(confluxSubscription.metadata.service_tier);
}

