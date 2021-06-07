import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/email_verification/email_verification.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:gaadibazaar/authentication/sign_up/sign_up.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController{
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordAgainController = TextEditingController();
  Future  Register() async{
    var response = await http.post("http://nandi.website/Nandi_host/nandi_taxi/authentication/user_register.php",
        body: { "name": nameController.text,
          "email" : emailController.text,
          "phone" : "sss",
          "password" : passwordController.text,
        }
    );
    print(response.body);
    var x = jsonDecode(response.body);
    if (x["message"] == "Register successful!"){
        Get.to(EmailVerification(
          email: emailController.text,
        ));
    }
    else{
      return EmailInUse();

    }
  }
}