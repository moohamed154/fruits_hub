// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAoPfj3X4bQqj3MPksUTSoE2loHvKrlr8Q',
    appId: '1:594081514957:web:457727d5fcf46962123084',
    messagingSenderId: '594081514957',
    projectId: 'fruit-hub-fe449',
    authDomain: 'fruit-hub-fe449.firebaseapp.com',
    storageBucket: 'fruit-hub-fe449.firebasestorage.app',
    measurementId: 'G-3BZNYQ68N8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWuxv-DeD-0llRNFgxSK6mMFdog6DcM6M',
    appId: '1:594081514957:android:c7a3d8d47e1a0822123084',
    messagingSenderId: '594081514957',
    projectId: 'fruit-hub-fe449',
    storageBucket: 'fruit-hub-fe449.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiw_xvduT9BhPR0p2d-p9e3MOhKWlAhZ4',
    appId: '1:594081514957:ios:7bd1dcc22b19ec69123084',
    messagingSenderId: '594081514957',
    projectId: 'fruit-hub-fe449',
    storageBucket: 'fruit-hub-fe449.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiw_xvduT9BhPR0p2d-p9e3MOhKWlAhZ4',
    appId: '1:594081514957:ios:7bd1dcc22b19ec69123084',
    messagingSenderId: '594081514957',
    projectId: 'fruit-hub-fe449',
    storageBucket: 'fruit-hub-fe449.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoPfj3X4bQqj3MPksUTSoE2loHvKrlr8Q',
    appId: '1:594081514957:web:f6af8b3bf8ae4255123084',
    messagingSenderId: '594081514957',
    projectId: 'fruit-hub-fe449',
    authDomain: 'fruit-hub-fe449.firebaseapp.com',
    storageBucket: 'fruit-hub-fe449.firebasestorage.app',
    measurementId: 'G-C1VLCS0HWQ',
  );
}
