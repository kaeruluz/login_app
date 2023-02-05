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
        return macos;
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
    apiKey: 'AIzaSyD7R2MSfPbAvlA8ToMkyz5mtHX0Dt1tHJY',
    appId: '1:812901917066:web:7acf1c46d5d669d8922873',
    messagingSenderId: '812901917066',
    projectId: 'login-app-6e9d7',
    authDomain: 'login-app-6e9d7.firebaseapp.com',
    storageBucket: 'login-app-6e9d7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-R6oulzlgVpdXD8xaXD95j5F1nTcilUQ',
    appId: '1:812901917066:android:44e28aa20dc34d81922873',
    messagingSenderId: '812901917066',
    projectId: 'login-app-6e9d7',
    storageBucket: 'login-app-6e9d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9GriqBirRFHaxX4tGZEdoTxIEq_agqCg',
    appId: '1:812901917066:ios:e070a8f1ee6aa62f922873',
    messagingSenderId: '812901917066',
    projectId: 'login-app-6e9d7',
    storageBucket: 'login-app-6e9d7.appspot.com',
    iosClientId: '812901917066-44qc7f3te8o8da6k9837qpbbl732a608.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9GriqBirRFHaxX4tGZEdoTxIEq_agqCg',
    appId: '1:812901917066:ios:e070a8f1ee6aa62f922873',
    messagingSenderId: '812901917066',
    projectId: 'login-app-6e9d7',
    storageBucket: 'login-app-6e9d7.appspot.com',
    iosClientId: '812901917066-44qc7f3te8o8da6k9837qpbbl732a608.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );
}