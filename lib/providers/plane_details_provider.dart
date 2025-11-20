import 'dart:convert';

import 'package:conflux/main.dart';
import 'package:conflux/models/plane_details.dart';
import 'package:conflux/providers/plane_provider.dart';
import 'package:conflux/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'plane_details_provider.g.dart';

@riverpod
Future<List<PlaneDetails>> planesDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(planesProvider);
  final planeDetails = await supabase.from('plane_details').select('*');
  return planeDetails.map((data) => PlaneDetails.fromJson(data)).toList();
}

@riverpod
Future<PlaneDetails?> planeDetails(Ref ref, String id) async {
  ref.keepAlive();
  final plane = await ref.watch(planeProvider(id).future);
  if (plane == null) {
    return null;
  }
  final planeDetails = await supabase
      .from('plane_details')
      .select('*')
      .eq('id', id)
      .single();
  return PlaneDetails.fromJson(planeDetails);
}

@riverpod
Future<List<PlaneDetails>> privatePlaneDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(privatePlanesProvider);
  final planeDetails = await supabase
      .from('plane_details')
      .select('*')
      .eq('public', false);
  return planeDetails.map((data) => PlaneDetails.fromJson(data)).toList();
}

@riverpod
Future<List<PlaneDetails>> publicPlaneDetails(Ref ref) async {
  ref.keepAlive();
  ref.watch(publicPlanesProvider);
  final planeDetails = await supabase
      .from('plane_details')
      .select('*')
      .eq('public', true);
  return planeDetails.map((data) => PlaneDetails.fromJson(data)).toList();
}

@riverpod
class SelectedPlaneDetails extends _$SelectedPlaneDetails {
  @override
  Future<PlaneDetails?> build() async {
    ref.keepAlive();
    final prefs = await ref.watch(preferenceProvider.future);
    final currentPlaneData = prefs.getString('selected_plane');
    if (currentPlaneData == null) {
      return null;
    }
    final currentPlaneDetails = PlaneDetails.fromJson(
      jsonDecode(currentPlaneData),
    );
    final selectedPlaneDetails = await ref.watch(
      planeDetailsProvider(currentPlaneDetails.id).future,
    );
    return selectedPlaneDetails;
  }

  Future<void> setSelectedPlane(PlaneDetails plane) async {
    final prefs = await ref.watch(preferenceProvider.future);
    await prefs.setString('selected_plane', jsonEncode(plane.toJson()));
    ref.invalidateSelf();
  }
}

@riverpod
class PlaneFilter extends _$PlaneFilter {
  @override
  String build() {
    ref.keepAlive();
    return '';
  }

  void setPlaneFilter(String filter) {
    state = filter;
  }

  void clearPlaneFilter() {
    state = '';
  }
}

@riverpod
class PlanePublicity extends _$PlanePublicity {
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
