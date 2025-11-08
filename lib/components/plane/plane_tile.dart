import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/plane_details.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneTile extends HookConsumerWidget {
  final PlaneDetails planeDetails;
  const PlaneTile({super.key, required this.planeDetails});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).orientation == Orientation.portrait
                ? constraints.maxWidth
                : 500 < constraints.maxWidth * 0.5 ? 500 : constraints.maxWidth * 0.5,
          ),
          child: AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              leading: SizedBox(
                width: 40,
                height: 30,
                child: CountryFlag.fromCountryCode(planeDetails.region),
              ),
              title: Text(
                planeDetails.name,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: Text(
                planeDetails.subnet,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              trailing: AppButton(
                outline: true,
                label: 'Select',
                onPressed: veilNetState == VeilNetState.disconnected
                    ? () async {
                        await ref
                            .read(selectedPlaneDetailsProvider.notifier)
                            .setSelectedPlane(planeDetails);
                        ref.read(pageControllerProvider).jumpToPage(0);
                      }
                    : null,
              ),
            ),
          ).animate().slideX(duration: 500.ms, curve: Curves.easeInOut),
        );
      },
    );
  }
}
