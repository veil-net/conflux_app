# VeilNet Conflux

A Flutter application for managing VeilNet VPN connections across multiple platforms. VeilNet Conflux provides a user-friendly interface for connecting to network planes, managing organizations, and monitoring VPN status.

## Features

- 🔐 **Authentication**: Secure user authentication via Supabase
- 🌐 **Multi-Platform VPN**: Connect to VeilNet VPN on Windows, Linux, macOS, and Android
- 📊 **Connection Management**: Monitor and control VPN connection status
- 🏢 **Organization Management**: Manage and switch between different organizations
- 🔔 **Notifications**: Stay informed with in-app notifications
- ⚙️ **Settings**: Customize app preferences including dark mode
- 📱 **Cross-Platform**: Native support for desktop and mobile platforms

## Supported Platforms

- **Windows** (x64)
- **Linux**
- **macOS** (Not Completed)
- **Android**

## Prerequisites

- Flutter SDK (3.9.2 or higher)
- Dart SDK (3.9.2 or higher)
- Platform-specific build tools:
  - **Android**: Android Studio with Android SDK
  - **iOS/macOS**: Xcode (macOS only)
  - **Windows**: Visual Studio with C++ development tools
  - **Linux**: CMake and build essentials

## Getting Started

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd conflux_app
```

2. Install Flutter dependencies:
```bash
flutter pub get
```

3. Generate code (for Riverpod providers and JSON serialization):
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Running the Application

#### Android
```bash
flutter run
```

#### Windows
```bash
flutter run -d windows
```

#### Linux
```bash
flutter run -d linux
```

#### macOS
```bash
flutter run -d macos
```

## Project Structure

```
lib/
├── components/          # Reusable UI components
│   ├── conflux/        # VPN connection components
│   ├── notification/   # Notification components
│   ├── org/            # Organization components
│   ├── realm/          # Network realm components
│   ├── profile/        # User profile components
│   ├── settings/       # Settings components
│   └── team/           # Team management components
├── models/             # Data models
├── pages/              # Application pages/screens
│   ├── auth_page.dart
│   ├── main_page.dart
│   ├── notification_page.dart
│   └── organisation_page.dart
├── providers/          # Riverpod state providers
├── views/              # View components
│   ├── home_view.dart
│   ├── plane_view.dart
│   └── setting_view.dart
└── main.dart           # Application entry point
```

## Configuration

The application uses Supabase for backend services. Configuration is currently hardcoded in `main.dart`. For production use, consider moving these to environment variables or a configuration file.

## Building for Release

### Android
```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

### Windows
```bash
flutter build windows --release
```

### Linux
```bash
flutter build linux --release
```

### macOS
```bash
flutter build macos --release
```

## Dependencies

Key dependencies include:
- **hooks_riverpod**: State management
- **go_router**: Navigation and routing
- **supabase_flutter**: Backend services and authentication
- **dio**: HTTP client
- **freezed**: Code generation for immutable classes
- **flutter_animate**: Animation utilities

See `pubspec.yaml` for the complete list of dependencies.

## Development

### Code Generation

This project uses code generation for:
- Riverpod providers (`riverpod_generator`)
- JSON serialization (`json_serializable`)
- Freezed classes (`freezed`)

Run code generation with:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For watch mode (auto-regenerate on file changes):
```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Linting

The project uses `custom_lint` and `flutter_lints` for code quality. Run:
```bash
flutter analyze
```

## License

See [LICENSE.md](LICENSE.md) for details.

## Contributing

Contributions are welcome! Please ensure your code follows the project's linting rules and includes appropriate tests.

## Support

For issues and questions, please open an issue on the repository.
