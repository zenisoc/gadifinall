import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gaadibazaar/dashboard/main_dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class LoginController extends GetxController{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future Login() async{
    var response = await http.post("http://nandi.website/Nandi_host/nandi_taxi/authentication/user_login.php",
      body:{
      "email": emailController.text,
        "password": passwordController.text,
      }
    );
    print(response.body);
    var x = jsonDecode(response.body);
    // print(x);
    if (x["message"] == "Login successful!"){
      Get.to(() => Dashboard());
    }
    if(x["message"] == "Invalid Credentials!"){
      Get.snackbar("error", "fail");
    }
  }
}