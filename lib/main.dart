import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Importa FirebaseAuth
import 'pages/login_page.dart'; // Importa la página de inicio de sesión
import 'pages/forgot_password_page.dart'; // Importa la página de recuperación de contraseña

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // Crea una instancia de FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(auth: _auth), // Pasa la instancia de FirebaseAuth a la página de inicio de sesión
      routes: {
        '/forgot_password': (context) => ForgotPasswordPage(), // Define la ruta para la página de recuperación de contraseña
      },
    );
  }

  // Método para registrar un nuevo usuario
  Future<void> registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Usuario registrado exitosamente
    } catch (e) {
      // Error al registrar el usuario
    }
  }

  // Método para iniciar sesión con correo y contraseña
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Usuario inició sesión exitosamente
    } catch (e) {
      // Error al iniciar sesión
    }
  }
}
