import 'package:conflux/main.dart';
import 'package:conflux/models/organisation.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'organisation_provider.g.dart';

@riverpod
class Organisations extends _$Organisations {
  @override
  Stream<List<Organisation>> build() {
    ref.keepAlive();
    return supabase
        .from('organisations')
        .stream(primaryKey: ['id'])
        .map(
          (event) =>
              event.map((data) => Organisation.fromJson(data)).toList(),
        );
  }

  Future<void> createOrganisation(
    String name,
    String? email,
    String? website,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.post(
        '/org',
        data: {'name': name, 'email': email, 'website': website},
      );
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deleteOrganisation(String id) async {
    final api = ref.read(apiProvider);
    try {
      await api.delete('/org?organisation_id=$id');
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> updateOrganisation(
    String id,
    String name,
    String? email,
    String? website,
  ) async {
    final api = ref.read(apiProvider);
    try {
      await api.put(
        '/org?organisation_id=$id',
        data: {'name': name, 'email': email, 'website': website},
      );
      ref.invalidateSelf();
    } on DioException catch (e) {
      throw Exception(e.response?.data['detail']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

@riverpod
Future<Organisation?> ownedOrganisation(Ref ref) async {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  final organisations = await ref.watch(organisationsProvider.future);
  return organisations
      .where((organisation) => organisation.user_id == user.id)
      .firstOrNull;
}
