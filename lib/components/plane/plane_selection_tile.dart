import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/plane_details.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneSelectionTile extends HookConsumerWidget {
  final PlaneDetails planeDetails;
  const PlaneSelectionTile({super.key, required this.planeDetails});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : constraints.maxWidth * 0.5,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: AppCard(
              child: ListTile(
                leading: Text(
                  planeDetails.region.toFlag,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                title: Text(
                  planeDetails.name,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                subtitle: Text(
                  planeDetails.subnet,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                trailing: AppButton(
                  outline: true,
                  label: 'Select',
                  onPressed: veilNetState == VeilNetState.disconnected ? () async {
                    await ref
                        .read(selectedPlaneDetailsProvider.notifier)
                        .setSelectedPlane(planeDetails);
                    ref.read(pageControllerProvider).jumpToPage(0);
                  } : null,
                ),
              ),
            ).animate().slideX(duration: 500.ms, curve: Curves.easeInOut),
          ),
        );
      },
    );
  }
}

extension convertFlag on String {
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );
  }
}
