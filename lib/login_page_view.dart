import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/login_page_controller.dart';
import 'package:get/get.dart';

class LoginPageView extends StatelessWidget {
  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan API"),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    TextFormField(
                      controller: controller.cEmail,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Masukkan Email",
                          label: Text("Email")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: controller.cPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Masukkan Password",
                          label: Text("Password")),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.loginUser();
                        print(controller.isLoading.value);
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
