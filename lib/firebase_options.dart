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
    apiKey: 'AIzaSyCVpoGv8uDE_z4s9BbUsbabyTYz1KE02F4',
    appId: '1:549861445341:web:63dc9ed51694abcc005534',
    messagingSenderId: '549861445341',
    projectId: 'componentes-d8bcd',
    authDomain: 'componentes-d8bcd.firebaseapp.com',
    storageBucket: 'componentes-d8bcd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAER1RmmlGgMZzSgxaONE-GGhUiaE0qO8c',
    appId: '1:549861445341:android:1ddda93ea9e43136005534',
    messagingSenderId: '549861445341',
    projectId: 'componentes-d8bcd',
    storageBucket: 'componentes-d8bcd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpWhLHHXmz5jgG9qMdD4DdUQNBNkpv7lg',
    appId: '1:549861445341:ios:8bda4db0e30fc96c005534',
    messagingSenderId: '549861445341',
    projectId: 'componentes-d8bcd',
    storageBucket: 'componentes-d8bcd.appspot.com',
    iosBundleId: 'com.example.practica3',
  );
}
