import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDtLDPOR--TZ86j29ZB1FD3odrTGSeCXZg",
            authDomain: "melita-omtrpk.firebaseapp.com",
            projectId: "melita-omtrpk",
            storageBucket: "melita-omtrpk.appspot.com",
            messagingSenderId: "620838875881",
            appId: "1:620838875881:web:bab1e9b533c13dd49c7678"));
  } else {
    await Firebase.initializeApp();
  }
}
