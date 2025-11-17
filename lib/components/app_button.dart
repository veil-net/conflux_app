import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppButton extends HookConsumerWidget {
  final IconData? icon;
  final String label;
  final Future<void> Function()? onPressed;
  final bool expand;
  final bool outline;
  const AppButton({
    super.key,
    this.icon,
    required this.label,
    required this.onPressed,
    this.expand = false,
    this.outline = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    return outline
        ? ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Theme.of(context).colorScheme.secondary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: isLoading.value
                  ? null
                  : onPressed != null
                  ? () async {
                      HapticFeedback.lightImpact();
                      isLoading.value = true;
                      await onPressed!();
                      if (context.mounted) {
                        isLoading.value = false;
                      }
                    }
                  : null,
              child: isLoading.value
                  ? Row(
                      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        if (icon != null)
                          Icon(
                            icon,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        Text(
                          label,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
            ),
        )
        : ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: isLoading.value
                  ? null
                  : onPressed != null
                  ? () async {
                      HapticFeedback.lightImpact();
                      isLoading.value = true;
                      await onPressed!();
                      if (context.mounted) {
                        isLoading.value = false;
                      }
                    }
                  : null,
              child: isLoading.value
                  ? Row(
                      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        if (icon != null) Icon(icon, color: Colors.white),
                        Text(
                          label,
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
            ),
        );
  }
}
