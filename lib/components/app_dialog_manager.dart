import 'dart:ui';

import 'package:conflux/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

enum DialogType { info, warning, success, error, confirm }

class DialogManager {
  static void showDialog(
    BuildContext context,
    String message,
    DialogType type, {
    String? label = 'Close',
    Future<void> Function()? onPressed,
    Future<void> Function()? onConfirm,
    Future<void> Function()? onCancel,
  }) {
    final title = switch (type) {
      DialogType.info => Text(
        'Info',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.blue),
      ),
      DialogType.warning => Text(
        'Warning',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.yellow),
      ),
      DialogType.success => Text(
        'Success',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.green),
      ),
      DialogType.error => Text(
        'Error',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.red),
      ),
      DialogType.confirm => Text(
        'Confirm',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.amber),
      ),
    };

    final icon = switch (type) {
      DialogType.info => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.info, color: Colors.white),
      ),
      DialogType.warning => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.warning, color: Colors.white),
      ),
      DialogType.success => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.check_circle, color: Colors.white),
      ),
      DialogType.error => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.error, color: Colors.white),
      ),
      DialogType.confirm => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.help, color: Colors.white),
      ),
    };

    showAdaptiveDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface.withAlpha(200),
          // shadowColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withAlpha(100),
              width: 1,
            ),
          ),
          constraints: const BoxConstraints(maxWidth: 500),
          alignment: Alignment.center,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [icon, title],
              ),
              Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          actions: [
            if (type == DialogType.error)
              AppButton(
                label: 'Copy',
                onPressed: () async {
                  Clipboard.setData(ClipboardData(text: message));
                },
              ),
            if (type == DialogType.confirm) ...[
              AppButton(
                label: 'Cancel',
                outline: true,
                onPressed:
                    onCancel ??
                    () async {
                      context.pop();
                    },
              ),
              AppButton(
                label: 'Confirm',
                onPressed: onConfirm != null
                    ? () async {
                        await onConfirm();
                        if (context.mounted) {
                          context.pop();
                        }
                      }
                    : () async {
                        context.pop();
                      },
              ),
            ] else
              AppButton(
                label: label ?? 'Close',
                outline: true,
                onPressed:
                    onPressed ??
                    () async {
                      context.pop();
                    },
              ),
          ],
        ),
      ),
    );
  }
}
