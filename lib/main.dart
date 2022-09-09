import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_base/model/firebase_options.dart';
import 'package:project_base/opciones.dart';
import 'package:project_base/opciones_page.dart';
import 'package:project_base/view/screens/login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
        primarySwatch: Colors.yellow,
      ),
      home: const OpcionesPage(),
      routes: {
        '/opciones': (context) => const OpcionesPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) =>  MyAppState(),
      },
    );
  }
}
