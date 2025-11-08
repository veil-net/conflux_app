import 'dart:io';

import 'package:conflux/components/app_info_card.dart';
import 'package:conflux/components/settings/account_management.dart';
import 'package:conflux/components/settings/general_settings_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingView extends HookConsumerWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid || Platform.isIOS) {
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AppInfoCard()),
          SliverToBoxAdapter(child: GeneralSettingsCard()),
          SliverToBoxAdapter(child: AccountManagement()),
        ],
      );
    }
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Column(
            children: [
              AppInfoCard(),
              GeneralSettingsCard(),
              AccountManagement(),
            ],
          )),
        ],
      );
    }
    return Center(child: Text('Unsupported platform'));
  }
}
