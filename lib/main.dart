import 'package:flutter_application_4/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDzlC8PagfpTqv8bjgmTTWrGM_d9DkKZR8",
      authDomain: "fluutter-4ae36.firebaseapp.com",
      projectId: "fluutter-4ae36",
      storageBucket: "fluutter-4ae36.appspot.com",
      messagingSenderId: "941190943509",
      appId: "1:941190943509:android:acdd52e1a61c20ba220f1c",
      measurementId: "G-NT4E6HQH1V",
    ),
  );

  if (kIsWeb) {
    // Inicializa el SDK de Facebook para web y escritorio
    await FacebookAuth.i.webAndDesktopInitialize(
      appId: "1928350454272133",
      cookie: true,
      xfbml: true,
      version: "v15.0",
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(),
    );
  }
}
