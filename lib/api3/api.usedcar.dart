import 'package:flutter/material.dart';
import 'package:gaadibazaar/api3/api.controller.dart';
import 'package:get/get.dart';

class PostApi extends StatelessWidget {
  ApiThreeController _apiThreeController= Get.put(ApiThreeController());
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: InkWell(
            onTap: (){
              _apiThreeController.postCar();
            },
              child: Center(
                child: Container(
            height: 202,
            width: 202,
            color:  Colors.red,
          ),
              )),
        ),
      ),
    );
  }
}
