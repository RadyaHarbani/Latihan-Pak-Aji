import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/login_page_view.dart';
import 'package:flutter_login_exercise/splash_screen_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreenView(),
    );
  }
}