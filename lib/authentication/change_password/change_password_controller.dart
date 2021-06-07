import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ChangePasswordController extends GetxController {
  final emailController2 = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final retypePasswordController = TextEditingController();

  Future PasswordChange() async {
    print("########3");
    print(emailController2.text);
    print(oldPasswordController.text);
    print(newPasswordController.text);
    var response = await http.post(
        "http://nandi.website/Nandi_host/nandi_taxi/authentication/User_change_password.php",
        body: {
          "email": emailController2.text.trim(),
          "old_password": oldPasswordController.text,
          "password": newPasswordController.text,
          "tag": "change_pass",
        });

    if (response.statusCode == 200) {
      Get.to(() => Login());
    } else {
      Get.snackbar(
        "Error",
        "Invalid Credentials",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 5),

      );
    }
  }
}
