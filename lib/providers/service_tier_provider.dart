import 'package:conflux/providers/subscription_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_tier_provider.g.dart';

@riverpod
Future<int> serviceTier(Ref ref) async {
  ref.keepAlive();
  try {
    final confluxSubscription = await ref.watch(
      confluxSubscriptionProvider.future,
    );
    if (confluxSubscription == null) {
      return 0;
    }
    final serviceTierStr = confluxSubscription.metadata.service_tier;
    return int.parse(serviceTierStr);
  } catch (e) {
    // If parsing fails or subscription fetch fails, return default tier
    return 0;
  }
}
