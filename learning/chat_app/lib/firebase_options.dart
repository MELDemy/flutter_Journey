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
    apiKey: 'AIzaSyAVW9SBNgGVwNiIbEw96GqHtj2lsyTghjI',
    appId: '1:623742111617:web:467a04b7cbcae33463e280',
    messagingSenderId: '623742111617',
    projectId: 'chat-app-ff22f',
    authDomain: 'chat-app-ff22f.firebaseapp.com',
    storageBucket: 'chat-app-ff22f.appspot.com',
    measurementId: 'G-0P1R8LQBPR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAn4Uhp9X0flLzTSrmggVxBgdqJfCyyJHc',
    appId: '1:623742111617:android:26d1882a9c367da963e280',
    messagingSenderId: '623742111617',
    projectId: 'chat-app-ff22f',
    storageBucket: 'chat-app-ff22f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsokyob55eqENMYnBv3YYAjZoKKen8QTI',
    appId: '1:623742111617:ios:6f88825347808f1563e280',
    messagingSenderId: '623742111617',
    projectId: 'chat-app-ff22f',
    storageBucket: 'chat-app-ff22f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsokyob55eqENMYnBv3YYAjZoKKen8QTI',
    appId: '1:623742111617:ios:6f88825347808f1563e280',
    messagingSenderId: '623742111617',
    projectId: 'chat-app-ff22f',
    storageBucket: 'chat-app-ff22f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVW9SBNgGVwNiIbEw96GqHtj2lsyTghjI',
    appId: '1:623742111617:web:d8ac5dc7258a46fa63e280',
    messagingSenderId: '623742111617',
    projectId: 'chat-app-ff22f',
    authDomain: 'chat-app-ff22f.firebaseapp.com',
    storageBucket: 'chat-app-ff22f.appspot.com',
    measurementId: 'G-6CC5G10FBN',
  );
}
