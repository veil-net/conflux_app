import 'dart:convert';

import 'package:conflux/models/realm_details.dart';
import 'package:conflux/providers/realm_provider.dart';
import 'package:conflux/providers/preference_provider.dart';
import 'package:conflux/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'realm_details_provider.g.dart';

@riverpod
Future<List<RealmDetails>> realmsDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(realmsProvider);
  final supabase = ref.read(supabaseClientProvider);
  final realmDetails = await supabase.from('realm_details').select('*');
  return realmDetails.map((data) => RealmDetails.fromJson(data)).toList();
}

@riverpod
Future<RealmDetails?> realmDetails(Ref ref, String id) async {
  ref.keepAlive();
  final realm = await ref.watch(realmProvider(id).future);
  if (realm == null) {
    return null;
  }
  final supabase = ref.read(supabaseClientProvider);
  final realmDetails = await supabase
      .from('realm_details')
      .select('*')
      .eq('id', id)
      .single();
  return RealmDetails.fromJson(realmDetails);
}

@riverpod
Future<List<RealmDetails>> privateRealmDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(privateRealmsProvider);
  final supabase = ref.read(supabaseClientProvider);
  final realmDetails = await supabase
      .from('realm_details')
      .select('*')
      .eq('public', false);
  return realmDetails.map((data) => RealmDetails.fromJson(data)).toList();
}

@riverpod
Future<List<RealmDetails>> publicRealmDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(publicRealmsProvider);
  final supabase = ref.read(supabaseClientProvider);
  final realmDetails = await supabase
      .from('realm_details')
      .select('*')
      .eq('public', true);
  return realmDetails.map((data) => RealmDetails.fromJson(data)).toList();
}

@riverpod
class SelectedRealmDetails extends _$SelectedRealmDetails {
  @override
  Future<RealmDetails?> build() async {
    ref.keepAlive();
    final prefs = await ref.watch(preferenceProvider.future);
    final currentRealmData = prefs.getString('selected_realm');
    if (currentRealmData == null) {
      return null;
    }
    final currentRealmDetails = RealmDetails.fromJson(
      jsonDecode(currentRealmData),
    );
    final selectedRealmDetails = await ref.watch(
      realmDetailsProvider(currentRealmDetails.id).future,
    );
    return selectedRealmDetails;
  }

  Future<void> setSelectedRealm(RealmDetails realm) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setString('selected_realm', jsonEncode(realm.toJson()));
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

@riverpod
class RealmPublicity extends _$RealmPublicity {
  @override
  bool? build() {
    ref.keepAlive();
    return null; // null = show all, true = show public only, false = show private only
  }

  void setPublicity(bool? publicity) {
    state = publicity;
  }

  void togglePublicity() {
    // Cycle through: null (all) -> true (public) -> false (private) -> null (all)
    if (state == null) {
      state = true;
    } else if (state == true) {
      state = false;
    } else {
      state = null;
    }
  }
}
