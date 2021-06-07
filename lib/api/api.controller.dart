import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.model.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class ApiController extends GetxController{
  Future<List<Modelcar>> Car() async {
    print("########3");
    var response = await http.post(
        "http://nandi.website/Nandi_host/nandi_taxi/see_more_car.php",
        body: {
          "body":"Hatchback"
        });
    // print(response.body);
    if (response.statusCode == 200) {
      return modelcarFromJson( response.body);
    }

}





}
