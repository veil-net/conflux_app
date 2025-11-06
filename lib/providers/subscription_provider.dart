import 'package:conflux/main.dart';
import 'package:conflux/models/subscription.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subscription_provider.g.dart';

@riverpod
class Subscriptions extends _$Subscriptions {
  @override
  Stream<List<Subscription>> build() {
    ref.keepAlive();
    return supabase
        .schema('stripe')
        .from('subscriptions')
        .stream(primaryKey: ['id'])
        .neq('status', 'canceled')
        .map(
          (event) => event.map((data) => Subscription.fromJson(data)).toList(),
        );
  }

  Future<String> createPlaneSubscription(
    String success_url,
    String cancel_url,
  ) async {
    final api = ref.read(apiProvider);
    try {
      final response = await api.post(
        '/stripe/subscribe/plane',
        data: {'success_url': success_url, 'cancel_url': cancel_url},
      );
      return response.data['url'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String> createConfluxSubscription(
    int service_tier,
    String success_url,
    String cancel_url,
  ) async {
    final api = ref.read(apiProvider);
    try {
      final response = await api.post(
        '/stripe/subscribe/conflux',
        data: {
          'success_url': success_url,
          'cancel_url': cancel_url,
          'service_tier': service_tier,
        },
      );
      return response.data['url'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> updateConfluxSubscription(
    String subscription_id,
    int service_tier,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.post(
        '/stripe/subscription/conflux/update',
        data: {
          'subscription_id': subscription_id,
          'service_tier': service_tier,
        },
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> cancelSubscription(String subscription_id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/stripe/subscription?subscription_id=$subscription_id');
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

@riverpod
Future<Subscription?> confluxSubscription(Ref ref) async {
  ref.keepAlive();
  final subscriptions = await ref.watch(subscriptionsProvider.future);
  return subscriptions
      .where(
        (subscription) =>
            subscription.metadata.type == 'conflux' &&
            subscription.status != 'canceled',
      )
      .firstOrNull;
}

@riverpod
Future<List<Subscription>> planeSubscriptions(Ref ref) async {
  ref.keepAlive();
  final subscriptions = await ref.watch(subscriptionsProvider.future);
  return subscriptions
      .where(
        (subscription) =>
            subscription.metadata.type == 'plane' &&
            subscription.status != 'canceled',
      )
      .toList();
}
