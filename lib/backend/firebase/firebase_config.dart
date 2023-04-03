import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDkEYF-hlOH1TpkEPjener-_G2xygc2tuY",
            authDomain: "essile-b706c.firebaseapp.com",
            projectId: "essile-b706c",
            storageBucket: "essile-b706c.appspot.com",
            messagingSenderId: "431682292863",
            appId: "1:431682292863:web:14f3f470239a83bcb6834a",
            measurementId: "G-G13VQG152C"));
  } else {
    await Firebase.initializeApp();
  }
}
