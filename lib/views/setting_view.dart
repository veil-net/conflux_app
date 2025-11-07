import 'dart:io';

import 'package:conflux/components/app_info_card.dart';
import 'package:conflux/components/settings/account_management.dart';
import 'package:conflux/components/settings/general_settings_card.dart';
import 'package:conflux/components/settings/windows_settings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingView extends HookConsumerWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Wrap(
            children: [
              AppInfoCard(),
              GeneralSettingsCard(),
              AccountManagement(),
              if (Platform.isWindows) WindowsSettings(),
            ],
          ),
        ),
      ],
    );
  }
}
