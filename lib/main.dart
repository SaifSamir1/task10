import 'package:flutter/material.dart';
import 'package:swd_app/session_coding/bottom_nav_screen.dart';
import 'package:swd_app/task10/home_screen.dart';
import 'package:swd_app/task11/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
