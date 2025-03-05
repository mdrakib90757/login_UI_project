import 'package:flutter/material.dart';
import 'package:new_login_project/Screen/loginscreen.dart';
import 'package:new_login_project/Screen/register_screen.dart';
import 'package:new_login_project/Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF1E2025)
      ),
      home: SplashScreen(

      )
    );
  }
}

