import 'package:conflux/components/app_button.dart';
import 'package:conflux/components/app_card.dart';
import 'package:conflux/components/app_dialog_manager.dart';
import 'package:conflux/models/plane_details.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:conflux/providers/current_user_provider.dart';
import 'package:conflux/providers/page_controller_provider.dart';
import 'package:conflux/providers/plane_details_provider.dart';
import 'package:conflux/providers/settings_provider.dart';
import 'package:conflux/providers/veilnet_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaneTile extends HookConsumerWidget {
  final PlaneDetails planeDetails;
  const PlaneTile({super.key, required this.planeDetails});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veilNetState = ref.watch(veilNetProvider);
    final currentUser = ref.watch(currentUserProvider);
    final developerMode = ref.watch(developerModeProvider);
    final selectedPlane = ref.watch(selectedPlaneDetailsProvider);
    final api = ref.watch(apiProvider);

    Future<void> deletePlane() async {
      DialogManager.showDialog(
        context,
        'Are you sure you want to delete this plane?',
        DialogType.confirm,
        onConfirm: () async {
          try {
            await api.delete('/planes?plane_id=${planeDetails.id}');
            if (context.mounted) {
              context.pop();
            }
          } on DioException catch (e) {
            if (context.mounted) {
              DialogManager.showDialog(
                context,
                e.response?.data['message'],
                DialogType.error,
              );
            }
          } catch (e) {
            if (context.mounted) {
              DialogManager.showDialog(context, e.toString(), DialogType.error);
            }
          }
        },
        onCancel: () async {
          if (context.mounted) {
            context.pop();
          }
        },
      );
    }

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
            child: developerMode
                ? AppCard(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Text(
                            planeDetails.region.toFlag,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          title: Text(
                            planeDetails.name,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          subtitle: Text(
                            planeDetails.subnet,
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                ),
                          ),
                          trailing: planeDetails.user_id != currentUser?.id
                              ? null
                              : AppButton(
                                  outline: true,
                                  label: 'Manage',
                                  onPressed:
                                      veilNetState == VeilNetState.disconnected
                                      ? () async {
                                          await ref
                                              .read(
                                                selectedPlaneDetailsProvider
                                                    .notifier,
                                              )
                                              .setSelectedPlane(planeDetails);
                                          ref
                                              .read(pageControllerProvider)
                                              .jumpToPage(0);
                                        }
                                      : null,
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${planeDetails.public ? 'Public' : 'Private'} Plane',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                  ),
                                  Row(
                                    spacing: 16,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed:
                                            veilNetState ==
                                                VeilNetState.disconnected
                                            ? () async {
                                                await ref
                                                    .read(
                                                      selectedPlaneDetailsProvider
                                                          .notifier,
                                                    )
                                                    .setSelectedPlane(
                                                      planeDetails,
                                                    );
                                                ref
                                                    .read(
                                                      pageControllerProvider,
                                                    )
                                                    .jumpToPage(0);
                                              }
                                            : null,
                                        child: Text('Select'),
                                      ),
                                      TextButton(
                                        onPressed:
                                            planeDetails.user_id ==
                                                    currentUser?.id &&
                                                selectedPlane.value?.id !=
                                                    planeDetails.id
                                            ? deletePlane
                                            : null,
                                        child: Text('Delete'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animate().slideX(duration: 500.ms, curve: Curves.easeInOut)
                : AppCard(
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
