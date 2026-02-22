import 'package:conflux/providers/page_controller_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

const _confluxKey = ValueKey('conflux');
const _realmKey = ValueKey('realm');
const _settingsKey = ValueKey('settings');

class AppFooter extends HookConsumerWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedKey = useState<Key>(_confluxKey);
    final pageController = ref.watch(pageControllerProvider);

    return NavigationBar(
      selectedKey: selectedKey.value,
      onSelected: (key) {
        if (key == null) return;
        selectedKey.value = key;
        if (key == _confluxKey) {
          pageController.jumpToPage(0);
        } else if (key == _realmKey) {
          pageController.jumpToPage(1);
        } else if (key == _settingsKey) {
          pageController.jumpToPage(2);
        }
      },
      alignment: NavigationBarAlignment.spaceAround,
      labelType: NavigationLabelType.all,
      expanded: true,
      children: [
        NavigationItem(
          key: _confluxKey,
          label: Text('Conflux'),
          child: Icon(Icons.cyclone),
        ),
        NavigationItem(
          key: _realmKey,
          label: Text('Realm'),
          child: Icon(Icons.public),
        ),
        NavigationItem(
          key: _settingsKey,
          label: Text('Settings'),
          child: Icon(Icons.settings),
        ),
      ],
    );
  }
}
