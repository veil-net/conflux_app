import 'package:shadcn_flutter/shadcn_flutter.dart';

enum ToastType { success, error, warning, info }

void toast(BuildContext context, String title, String message, ToastType type) {
  showToast(
    context: context,
    builder: (context, overlay) {
      return SurfaceCard(
        child: Basic(
          leading: switch (type) {
            ToastType.success => Icon(Icons.check_circle, color: Colors.green),
            ToastType.error => Icon(Icons.error, color: Colors.red),
            ToastType.warning => Icon(Icons.warning, color: Colors.yellow),
            ToastType.info => Icon(Icons.info, color: Colors.blue),
          },
          title: Text(title),
          subtitle: Text(message),
          trailing: OutlineButton(
            onPressed: () => overlay.close(),
            size: ButtonSize.small,
            child: Text('Close'),
          ),
        ),
      );
    },
    location: ToastLocation.bottomRight,
  );
}
