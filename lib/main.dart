import 'package:flutter/material.dart';
import 'package:xpress_chat/pages/home_page.dart';
import 'package:xpress_chat/pages/login_page.dart';
import 'package:xpress_chat/pages/register_page.dart';
import 'package:xpress_chat/pages/splash_screen.dart';
import 'package:xpress_chat/routes.dart';

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
      initialRoute: MyRoutes.splashRoute,
      routes: {
        MyRoutes.splashRoute: (context) => SplashScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.registerRoute: (context) => RegisterPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
