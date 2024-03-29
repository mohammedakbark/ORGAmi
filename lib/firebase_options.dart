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
    apiKey: 'AIzaSyDdtMpCO-4W4X7AaXLzklB4Ohi03Yf-uzY',
    appId: '1:271966691973:web:f272c6552e1371b19c7fec',
    messagingSenderId: '271966691973',
    projectId: 'orgami-53cd1',
    authDomain: 'orgami-53cd1.firebaseapp.com',
    storageBucket: 'orgami-53cd1.appspot.com',
    measurementId: 'G-09Y6GCNJP3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-qiI9RUKcod-RSSOhOpGlFF0OzTMYUR0',
    appId: '1:271966691973:android:f642cbb9d5e5cf879c7fec',
    messagingSenderId: '271966691973',
    projectId: 'orgami-53cd1',
    storageBucket: 'orgami-53cd1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxHkGgxGVYtP1wPbtSLraHcDNv_dxDrqo',
    appId: '1:271966691973:ios:accacf48026884c89c7fec',
    messagingSenderId: '271966691973',
    projectId: 'orgami-53cd1',
    storageBucket: 'orgami-53cd1.appspot.com',
    iosBundleId: 'com.example.orgami',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxHkGgxGVYtP1wPbtSLraHcDNv_dxDrqo',
    appId: '1:271966691973:ios:fa8c59ee4196b0fa9c7fec',
    messagingSenderId: '271966691973',
    projectId: 'orgami-53cd1',
    storageBucket: 'orgami-53cd1.appspot.com',
    iosBundleId: 'com.example.orgami.RunnerTests',
  );
}
