import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/login.dart';
import 'package:flutter_application_1/Pages/singup.dart';
import 'package:flutter_application_1/Pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => LogIn(),
        '/Singip': (context) => SingUp(),
      },
    );
  }
}
