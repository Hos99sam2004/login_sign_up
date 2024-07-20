import 'package:flutter/material.dart';
import 'package:login_sign_up/pages/welcome.dart';
import 'package:login_sign_up/pages/sign_up.dart';
import 'package:login_sign_up/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Welcome(),
        '/login': (context) => Login(),
        '/sign_up': (context) => SignUp(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "myFonts",
      ),
      home: Welcome(),
    );
  }
}
