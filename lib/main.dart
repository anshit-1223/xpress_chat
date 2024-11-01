import 'package:flutter/material.dart';
import 'package:xpress_chat/home_page.dart';
import 'package:xpress_chat/login_page.dart';
import 'package:xpress_chat/register_page.dart';
import 'package:xpress_chat/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
