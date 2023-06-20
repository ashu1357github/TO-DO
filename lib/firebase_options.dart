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
    apiKey: 'AIzaSyDRPLROq4BjC8E-ImhCwxnUtcKM71EZ57c',
    appId: '1:382935510257:web:ce8ba815a956c9ede94d50',
    messagingSenderId: '382935510257',
    projectId: 'todo-dd433',
    authDomain: 'todo-dd433.firebaseapp.com',
    storageBucket: 'todo-dd433.appspot.com',
    measurementId: 'G-9VGPTZ7F3E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOoROOID8iQu4nivpgwXPpl7AHxUQWcGQ',
    appId: '1:382935510257:android:75a8080c92d5e066e94d50',
    messagingSenderId: '382935510257',
    projectId: 'todo-dd433',
    storageBucket: 'todo-dd433.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-2volhw6_vkgTmgCFYmDAb2K_GcfndoY',
    appId: '1:382935510257:ios:6b87c182e04ad4e2e94d50',
    messagingSenderId: '382935510257',
    projectId: 'todo-dd433',
    storageBucket: 'todo-dd433.appspot.com',
    androidClientId: '382935510257-sat3o6uu57ca7fb9h5evguu81251ofb1.apps.googleusercontent.com',
    iosClientId: '382935510257-mk0t2lhp8ibpgppshuigt9lskk04hfrm.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-2volhw6_vkgTmgCFYmDAb2K_GcfndoY',
    appId: '1:382935510257:ios:6b87c182e04ad4e2e94d50',
    messagingSenderId: '382935510257',
    projectId: 'todo-dd433',
    storageBucket: 'todo-dd433.appspot.com',
    androidClientId: '382935510257-sat3o6uu57ca7fb9h5evguu81251ofb1.apps.googleusercontent.com',
    iosClientId: '382935510257-mk0t2lhp8ibpgppshuigt9lskk04hfrm.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoApplication1',
  );
}