import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.model.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class ApiThreeController extends GetxController{
  Future postCar() async {
    print("post");
    var response = await http.post(
        "http://nandi.website/Nandi_host/nandi_taxi/Upload_section/post_car.php",
        body: {
          "image" : "assets/images/car.png",
          "image1": "assets/images/car.png",
          " image2": "assets/images/car.png",
          " Status": "Used",
          " region": "bagmati",
          "brand_id": "007",
          "model": "2020",
          "year_manufacture" : "2020",
          "color": "yellow",
          "transmission": "Automatic",
          "milage" : "200km",
          "body" : "Hatchback",
          "fuel" : "Electric",
          "engine_size": "none",
          "seat_n": "4",
        "  description" : "classic",
          "user_id": "014",
          "price": "40000",
         " milage": "200km",
          "own_status": "like new",
        });
    print("hello");
     print(response.body);
    return "hy";
    if (response.statusCode == 200) {
      return modelcarFromJson( response.body);
    }
}





}
