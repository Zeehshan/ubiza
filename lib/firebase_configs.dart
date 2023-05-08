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
      case TargetPlatform.iOS:
        return ios;
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
    apiKey: 'AIzaSyDZURkPEKsv2ReIeye8LNxTD1WuLJqSSz8',
    appId: '1:395743051394:android:fa36408f3159bb00fb3e9b',
    messagingSenderId: '395743051394',
    projectId: 'crucial-oarlock-380904',
  );
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZURkPEKsv2ReIeye8LNxTD1WuLJqSSz8',
    appId: '1:395743051394:ios:5da1e10ba29cbe68fb3e9b',
    messagingSenderId: '395743051394',
    projectId: 'crucial-oarlock-380904',
  );
}
