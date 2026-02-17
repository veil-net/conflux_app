import 'dart:developer';

import 'package:conflux/models/realm.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/preference_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'realm_provider.g.dart';

@riverpod
class Realms extends _$Realms {
  @override
  Future<List<Realm>> build() async {
    ref.keepAlive();
    final api = ref.watch(apiProvider);
    final response = await api.get('/realm/list');
    final rawList = response.data as List;
    return rawList
        .map((e) => Realm.fromJson(e as Map<String, dynamic>))
        .toList();
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

@riverpod
Future<Realm?> realm(Ref ref, String id) async {
  ref.keepAlive();
  final api = ref.read(apiProvider);
  final response = await api.get('/realm?realm_id=$id');
  final data = response.data as Map<String, dynamic>;
  return Realm.fromJson(data);
}

@riverpod
class SelectedRealm extends _$SelectedRealm {
  @override
  Future<Realm?> build() async {
    ref.keepAlive();
    final prefs = await ref.watch(preferenceProvider.future);
    final selectedRealmId = prefs.getString('selected_realm');
    if (selectedRealmId == null || selectedRealmId.isEmpty) {
      log('No selected realm');
      return null;
    }
    try {
      return await ref.watch(realmProvider(selectedRealmId).future);
    } catch (e) {
      prefs.remove('selected_realm');
      log('Failed to load selected realm: $e');
      return null;
    }
  }

  Future<void> setSelectedRealm(Realm realm) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setString('selected_realm', realm.id);
    ref.invalidateSelf();
  }
}

@riverpod
class RealmFilter extends _$RealmFilter {
  @override
  String build() {
    ref.keepAlive();
    return '';
  }

  void setRealmFilter(String filter) {
    state = filter;
  }

  void clearRealmFilter() {
    state = '';
  }
}
