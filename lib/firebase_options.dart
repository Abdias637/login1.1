// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCqm8K1yQn6UHppqkJsjt6LTbmIC-aLfUs',
    appId: '1:941190943509:web:ff96b809ec6dc4d8220f1c',
    messagingSenderId: '941190943509',
    projectId: 'fluutter-4ae36',
    authDomain: 'fluutter-4ae36.firebaseapp.com',
    databaseURL: 'https://fluutter-4ae36-default-rtdb.firebaseio.com',
    storageBucket: 'fluutter-4ae36.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDzlC8PagfpTqv8bjgmTTWrGM_d9DkKZR8',
    appId: '1:941190943509:android:acdd52e1a61c20ba220f1c',
    messagingSenderId: '941190943509',
    projectId: 'fluutter-4ae36',
    databaseURL: 'https://fluutter-4ae36-default-rtdb.firebaseio.com',
    storageBucket: 'fluutter-4ae36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCB6ZxNmzSnBS0rMDXwqfYp3TiUG_1w0oY',
    appId: '1:941190943509:ios:a18f3d83e77ccc2b220f1c',
    messagingSenderId: '941190943509',
    projectId: 'fluutter-4ae36',
    databaseURL: 'https://fluutter-4ae36-default-rtdb.firebaseio.com',
    storageBucket: 'fluutter-4ae36.appspot.com',
    iosBundleId: 'com.example.counterTest',
  );
}
