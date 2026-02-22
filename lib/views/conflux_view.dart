import 'package:conflux/components/realm/selected_realm.dart';

import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxView extends HookConsumerWidget {
  const ConfluxView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SelectedRealm()],
          ),
        ),
      ],
    );
  }
}
