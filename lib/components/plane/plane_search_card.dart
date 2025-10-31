import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_text_input.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _PlaneSearchCardDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _PlaneSearchCardDelegate({required this.child});

  @override
  double get minExtent => 160.0; // Approximate fixed height

  @override
  double get maxExtent => 160.0; // Same as minExtent for fixed height

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: maxExtent,
      child: child,
    );
  }

  @override
  bool shouldRebuild(_PlaneSearchCardDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}

class PlaneSearchCard extends HookConsumerWidget {

  const PlaneSearchCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planeNameTextController = useTextEditingController();
    final planePublicity = ref.watch(planePublicityProvider);
    return SliverPersistentHeader(
      pinned: true,
      delegate: _PlaneSearchCardDelegate(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: AppCard(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: AppTextInput(
                          label: 'Search a Plane',
                          hint: 'Search planes by name',
                          controller: planeNameTextController,
                          keyboardType: TextInputType.text,
                          prefixIcon: FontAwesomeIcons.magnifyingGlass,
                          obscureText: false,
                          readOnly: false,
                          enable: true,
                          onChanged: (value) {
                            ref.read(planeFilterProvider.notifier).setPlaneFilter(value);
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          DialogManager.showDialog(
                            context,
                            'Each VeilNet Plane is a decentralized network of nodes that can be used to connect to the internet.'
                            'Each Plane has a Geographic Region associated with it, which will determine the masquerade geographic location for your traffic.\n\n'
                            'Terra is a special Plane that associated with any country, your traffic will be masqueraded as if it is coming from multiple countries at once. This may cause some websites or applications fail to work properly.',
                            DialogType.info,
                          );
                        },
                        icon: Icon(Icons.info),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: SegmentedButton<bool?>(
                      showSelectedIcon: false,
                      segments: const [
                        ButtonSegment<bool?>(
                          value: null,
                          label: Text('All'),
                        ),
                        ButtonSegment<bool?>(
                          value: true,
                          label: Text('Public'),
                        ),
                        ButtonSegment<bool?>(
                          value: false,
                          label: Text('Private'),
                        ),
                      ],
                      selected: {planePublicity},
                      onSelectionChanged: (Set<bool?> selected) {
                        ref.read(planePublicityProvider.notifier).setPublicity(selected.first);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}