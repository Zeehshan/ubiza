# happycar

A new Flutter application.

## Getting Started

TODO


## App Commands for Development
- `flutter pub run build_runner build --delete-conflicting-outputs` - First generate the app models
- `flutter run --flavor development` - Start the development flavour of the app
- `flutter run --flavor production` - Start the production flavour of the app

## Steps to Release a New Application

- Update the build version and build number in pubspec.yaml
- Android development app for internal testing: `flutter build apk --flavor development`
- Android production app for internal testing: `flutter build apk --flavor production`
- Android production app to release: `flutter build appbundle --flavor production --release`

- iOS development app for internal testing: `flutter build ios --flavor development`
- iOS production app for release: `flutter build ios --flavor production`
- For iOS app, after running `flutter build`, open XCode, go to Product -> Archive -> Select the version to release in the popup -> Click Distribute App -> Keep pressing next from then on.
