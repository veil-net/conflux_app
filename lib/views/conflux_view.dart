import 'package:conflux/components/conflux/conflux_status_card.dart';
import 'package:conflux/components/profile_card.dart';
import 'package:conflux/components/realm/selected_realm_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfluxView extends HookConsumerWidget {
  const ConfluxView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final logoOpacity = useState(0.0);


    useEffect(() {
      void listener() {
        logoOpacity.value =
            (scrollController.offset /
                    scrollController.position.maxScrollExtent)
                .clamp(0.0, 1.0);
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    return Stack(
      children: [
        Opacity(
          opacity: logoOpacity.value,
          child: Column(
            children: [
              Image.asset('assets/images/Logo_V.png'),
              Column(
                children: [
                  ListTile(
                    title: Text('Version'),
                    trailing: Text('Beta - v1.0.3'),
                  ),
                ],
              ),
            ],
          ),
        ),
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverFloatingHeader(child: ProfileCard()),
              SliverFloatingHeader(child: StatusCard()),
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [SelectedRealmCard()],
                ),
              ),
            ],
          ),
      ],
    );
  }
}
