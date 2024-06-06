import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCcD2Ai7bbE0KXloYABv2s6zXVzHcctPsI",
            authDomain: "tour-guide-p-o-c-pm6sgs.firebaseapp.com",
            projectId: "tour-guide-p-o-c-pm6sgs",
            storageBucket: "tour-guide-p-o-c-pm6sgs.appspot.com",
            messagingSenderId: "612706604302",
            appId: "1:612706604302:web:7e480b629e9d6fc0f5f35f"));
  } else {
    await Firebase.initializeApp();
  }
}
