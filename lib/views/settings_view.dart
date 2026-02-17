import 'package:conflux/components/settings/account_settings.dart';
import 'package:conflux/components/settings/general_settings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsView extends HookConsumerWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: GeneralSettings()),
        SliverToBoxAdapter(child: AccountSettings()),
      ],
    );
  }
}
