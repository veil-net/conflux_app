import 'package:conflux/components/app_card.dart';
import 'package:conflux/models/organisation.dart';
import 'package:conflux/providers/teams_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganisationTile extends HookConsumerWidget {
  final Organisation organisation;
  const OrganisationTile({super.key, required this.organisation});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(teamsProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth:500,
          ),
          child: AppCard(
            child: ExpansionTile(
              tilePadding: EdgeInsets.symmetric(horizontal: 16),
              childrenPadding: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              leading: Icon(Icons.business),
              title: Text(
                organisation.name,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              subtitle: Text(
                organisation.email ?? 'No email',
                style: TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              children: [
                teams.when(
                  data: (data) {
                    final orgTeams = data
                        .where(
                          (team) => team.organisation_id == organisation.id,
                        )
                        .toList();
                    if (orgTeams.isEmpty) {
                      return Center(
                        child: Text(
                          'No teams found',
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }
                    return Row(
                      children: [
                        Wrap(
                          children: [
                            for (var team in orgTeams)
                              Chip(
                                label: Text(
                                  team.name,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    );
                  },
                  error: (error, stackTrace) => Center(
                    child: TextButton(
                      onPressed: () => ref.invalidate(teamsProvider),
                      child: Text(
                        'Failed to load teams, retry',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ),
                  loading: () => Center(child: LinearProgressIndicator()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
