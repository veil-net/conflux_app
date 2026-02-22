import 'package:conflux/components/app_footer.dart';
import 'package:conflux/components/app_header.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/views/conflux_view.dart';
import 'package:conflux/views/realm_view.dart';
import 'package:conflux/views/settings_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      headers: [AppHeader()],
      footers: [Divider(), AppFooter()],
      child: PageView(
        controller: pageController,
        children: [ConfluxView(), RealmView(), SettingsView()],
      ),
    );
  }
}
