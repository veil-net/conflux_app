import 'package:conflux/providers/page_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

const _confluxKey = ValueKey('conflux');
const _realmKey = ValueKey('realm');
const _settingsKey = ValueKey('settings');

class AppFooter extends HookConsumerWidget {
  const AppFooter({super.key});

  static Key _indexToKey(int index) {
    switch (index) {
      case 0:
        return _confluxKey;
      case 1:
        return _realmKey;
      case 2:
        return _settingsKey;
      default:
        return _confluxKey;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentPageIndexProvider);
    final selectedKey = _indexToKey(currentIndex);
    final pageController = ref.watch(pageControllerProvider);

    return NavigationBar(
      selectedKey: selectedKey,
      onSelected: (key) {
        if (key == null) return;
        if (key == _confluxKey) {
          ref.read(currentPageIndexProvider.notifier).setIndex(0);
          pageController.jumpToPage(0);
        } else if (key == _realmKey) {
          ref.read(currentPageIndexProvider.notifier).setIndex(1);
          pageController.jumpToPage(1);
        } else if (key == _settingsKey) {
          ref.read(currentPageIndexProvider.notifier).setIndex(2);
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
