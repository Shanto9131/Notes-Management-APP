import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6ZRzJ9_3oceBpgIBq7HegepQ6LrsmDNo',
    appId: '1:716826702761:android:29e5e2e940d1bec13fcab8',
    messagingSenderId: '716826702761',
    projectId: 'notes-management-app-75e8f',
    storageBucket: 'notes-management-app-75e8f.firebasestorage.app',
  );
}