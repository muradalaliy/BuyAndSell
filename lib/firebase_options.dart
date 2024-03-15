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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtplz08cHcgMvBROXHGpr_N4_DGNVxzPM',
    appId: '1:1024282006794:android:d879960bccb9c5d68416f3',
    messagingSenderId: '1024282006794',
    projectId: 'flutter-login-applicatio-7a184',
    storageBucket: 'flutter-login-applicatio-7a184.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVLgomR3W7ncIvt9AhR5v_zudXAricGW0',
    appId: '1:1024282006794:ios:7fe15381f01f4fdc8416f3',
    messagingSenderId: '1024282006794',
    projectId: 'flutter-login-applicatio-7a184',
    storageBucket: 'flutter-login-applicatio-7a184.appspot.com',
    androidClientId: '1024282006794-cujdi29oklddoudi2m9s7psgoouqrkk4.apps.googleusercontent.com',
    iosClientId: '1024282006794-pi9abc48sun4qh1fqc8fshm68r49fc1r.apps.googleusercontent.com',
    iosBundleId: 'com.yousra.BuyAndSell',
  );
}
