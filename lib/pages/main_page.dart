import 'package:conflux/components/status_card.dart';
import 'package:conflux/components/realm/realm_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFloatingHeader(child: StatusCard()),
            RealmList(),
          ],
        ),
      ),
    );
  }
}
