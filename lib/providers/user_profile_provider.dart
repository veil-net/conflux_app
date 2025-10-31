import 'dart:async';

import 'package:conflux/main.dart';
import 'package:conflux/models/user_profile.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
Future<UserProfile> userProfile(Ref ref) async {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);

  if (user == null) {
    throw Exception('User not found');
  }

  final profile = await supabase
      .from('profiles')
      .select('*')
      .eq('id', user.id)
      .single();

  return UserProfile.fromJson(profile);
}

@riverpod
Future<int> userMP(Ref ref) async {
  ref.keepAlive();
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User not found');
  }
  final profile = await supabase
      .from('profiles')
      .select('mp')
      .eq('id', user.id)
      .single();
  return profile['mp'];
}