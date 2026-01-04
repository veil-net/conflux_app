import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'realm_provider.g.dart';

@riverpod
class Realms extends _$Realms {
  @override
  Stream<List<Realm>> build() {
    ref.keepAlive();
    ref.watch(currentUserProvider);
    final supabase = ref.read(supabaseClientProvider);
    return supabase
        .from('realms')
        .stream(primaryKey: ['id'])
        .map((event) => event.map((data) => Realm.fromJson(data)).toList());
  }

  Future<void> createRealm(
    String name,
    String subnet,
    bool public,
    String veil_id,
    String subscription_id,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.post(
        '/realm',
        data: {
          'name': name,
          'subnet': subnet,
          'public': public,
          'veil_id': veil_id,
          'subscription_id': subscription_id,
        },
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deleteRealm(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/realm?realm_id=$id');
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> updateRealmSubscription(
    String id,
    String subscription_id,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.patch(
        '/realm/subscription',
        data: {'realm_id': id, 'subscription_id': subscription_id},
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> dissociateRealmSubscription(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/realm/subscription?realm_id=$id');
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

@riverpod
Stream<Realm?> realm(Ref ref, String id) {
  ref.keepAlive();
  final supabase = ref.read(supabaseClientProvider);
  return supabase
      .from('realms')
      .stream(primaryKey: ['id'])
      .eq('id', id)
      .limit(1)
      .map(
        (event) =>
            event.map((data) => Realm.fromJson(data)).toList().firstOrNull,
      );
}

@riverpod
Future<List<Realm>> ownedRealms(Ref ref) async {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  final supabase = ref.read(supabaseClientProvider);
  final realms = await supabase
      .from('realms')
      .select('*')
      .eq('user_id', user.id);
  return realms.map((data) => Realm.fromJson(data)).toList();
}

@riverpod
Future<List<Realm>> privateRealms(Ref ref) async {
  ref.keepAlive();
  final realms = await ref.watch(realmsProvider.future);
  return realms.where((realm) => realm.public == false).toList();
}

@riverpod
Future<List<Realm>> publicRealms(Ref ref) async {
  ref.keepAlive();
  final realms = await ref.watch(realmsProvider.future);
  return realms.where((realm) => realm.public == true).toList();
}
