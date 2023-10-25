import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatelessWidget {
   SplashScreenView({super.key});
  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
