import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leave_management_app/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyALDNz2i71UO8-f-PkQVvQPgeDmz_vJwOM",
      authDomain: "leave-management-system-app.firebaseapp.com",
      projectId: "leave-management-system-app",
      storageBucket: "leave-management-system-app.firebasestorage.app",
      messagingSenderId: "579850355583",
      appId: "1:579850355583:web:a00a3fd567a6afdfb8504a",
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
