import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/home_page_controller.dart';
import 'package:get/get.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(
            () => Text(homePageController.strName.value),
          ),
        ),
      ),
    );
  }
}
