import 'package:first/pages/auth/forgot_password_page.dart';
import 'package:first/pages/auth/login_page.dart';
import 'package:first/pages/auth/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/login",
        routes: <String, WidgetBuilder>{
          "/login": (BuildContext context) => const LoginPage(),
          "/register": (BuildContext context) => const RegisterPage(),
          "/forgot-password": (BuildContext context) =>
              const ForgotPasswordPage(),
          //"/home": (BuildContext context) => const LandingPage(),
        });
  }
}
