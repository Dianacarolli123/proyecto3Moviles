import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomeView.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/Recuperarcon.dart';
import 'package:flutter_application_1/pages/Registro.dart';
import 'package:flutter_application_1/pages/progressview.dart';
import 'package:flutter_application_1/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'inicio',
      routes: {
        'inicio': (BuildContext context) => const SplashView(),
        'load': (BuildContext context) => const ProgressView(),
        'HomeView': (BuildContext context) => const HomeView(),
        'Login': (BuildContext context) => const LoginPage(),
        'Registro': (BuildContext context) => const Registro(),
        'Contrasena': (BuildContext context) => const RecuperarPage(),
      },
    );
  }
}