import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBvFG7016k9-dQX8vvPQ0dx_QxvhGAESDg",
            authDomain: "biomag-e0b04.firebaseapp.com",
            projectId: "biomag-e0b04",
            storageBucket: "biomag-e0b04.appspot.com",
            messagingSenderId: "473807984073",
            appId: "1:473807984073:web:b1d560243f317a4f4fc418",
            measurementId: "G-R9CNSZLMTS"));
  } else {
    await Firebase.initializeApp();
  }
}
