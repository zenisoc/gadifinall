import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:gaadibazaar/practise/model/click_model.dart';
class ClickController extends GetxController {
  var a = 1000.obs;
  add() {
    a.value++;
  }
  sub() {
    a.value--;
  }
  Future<List<ProfileData>> displayData ()async{
    var response = await http.post("http://nandi.website/Nandi_host/mahajodi/Mahajodi_backend/profile_setup/user_dashboard.php",
    body: { "user_id": "55"});
   return profileDataFromJson(response.body);
  }
  Future<List<ProfileData>> postData ()async{
    var response = await http.post("http://nandi.website/Nandi_host/mahajodi/Mahajodi_backend/profile_setup/user_dashboard.php",
        body: { "user_id": "55"});

  }
  Future  Register() async{
    var response = await http.post("http://nandi.website/Nandi_host/nandi_taxi/user_register.php",
      body: { "name": "ram",
        "email" : "ram@gmail.com",
        "password" : "1234"
      }
    );
    print(response.body);
  }

  }


