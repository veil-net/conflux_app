import 'package:conflux/main.dart';
import 'package:conflux/models/conflux_details.dart';
import 'package:conflux/providers/conflux_provider.dart';
import 'package:conflux/providers/conflux_session_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conflux_details_provider.g.dart';

@riverpod
Future<ConfluxDetails?> confluxDetails(Ref ref, String id) async {
  ref.keepAlive();
  final conflux = await ref.watch(confluxByIDProvider(id).future);
  if (conflux == null) {
    return null;
  }

  final confluxSession = await ref.watch(confluxSessionProvider(id).future);
  if (confluxSession == null) {
    return null;
  }

  final result = await supabase
      .from('conflux_details')
      .select('*')
      .eq('id', id)
      .limit(1);
  return result.isNotEmpty ? ConfluxDetails.fromJson(result.first) : null;
}
