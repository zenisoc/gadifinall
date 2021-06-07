import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class ForgotPasseordController extends GetxController{
  final emailController = TextEditingController();
  Future <List> postForgotPassword () async{
    var response = await http.post("http://nandi.website/Nandi_host/nandi_taxi/authentication/User_change_password.php",
    body: {
      "email": emailController.text,
    });
    print(response.body);
    var x = jsonDecode(response.body);

  }

}