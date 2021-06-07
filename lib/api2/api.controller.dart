import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.model.dart';
import 'package:gaadibazaar/api2/api.model.dart';
import 'package:gaadibazaar/api2/api.model.fliter.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class ApitwoController extends GetxController{

  Future<List<Usedcar>> usedCar() async {

    var response = await http.post(
        "http://nandi.website/Nandi_host/nandi_taxi/see_more_used.php",
        body: {
          "body":"Hatchback",
        });

    // print(response.body);
    if (response.statusCode == 200) {
      return usedcarFromJson( response.body);
    }

  }
  Future<List<Filtercar>> filterCar() async {
    print("apple");
    var response = await http.post(
        "http://nandi.website/Nandi_host/nandi_taxi/car/car_filter.php",
        body: {
          "body":"Hatchback",
          "fuel" : "Electric",
          'transmission' : "Automatic",
          "condition" : "New",
          "price" : "20000",

        });
    print("apple");
    // print(response.body);
    if (response.statusCode == 200) {
      return filtercarFromJson( response.body);
    }

  }



}
