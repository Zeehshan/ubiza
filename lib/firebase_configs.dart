// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseConfigs {
  Future<void> initialize() async {
    // if (Firebase.apps.isNotEmpty) {
    await Firebase.initializeApp();
    // }
  }
}

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      // case TargetPlatform.iOS:
      // return ios;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCR_-9D53JwpdsSDnCyoxFI2ABaZltEFc',
    appId: '1:87880152312:android:929be11b1c4c69fa94370d',
    messagingSenderId: '87880152312',
    projectId: 'ubiza-dev',
  );
  // static const FirebaseOptions ios = FirebaseOptions(
  //   apiKey: 'AIzaSyBlObP3iLImJ5kwl9BjeLxQzs3NUJpsSWo',
  //   appId: '1:710469124995:ios:b0a6eb5c25065be285acb6',
  //   messagingSenderId: '710469124995',
  //   projectId: 'ubiza-dev',
  // );
}
