flutter pub get
flutter gen-l10n
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run flutter_launcher_icons
dart format .