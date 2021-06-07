import 'package:flutter/material.dart';
import 'package:gaadibazaar/dashboard/bike_section/bike_section.dart';
import 'package:gaadibazaar/dashboard/car_section/car_section.dart';
import 'package:gaadibazaar/dashboard/car_section/stories_like_circles.dart';
import 'package:gaadibazaar/dashboard/constructions_section/construction_section.dart';
import 'package:gaadibazaar/dashboard/main_dashboard/dashboard.dart';
import 'package:gaadibazaar/listing/listing_car/listing_car.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // SizedBox(width: 10,),
        InkWell(
          onTap: (){
            Get.to(() => Dashboard());
          },
          child: Stories(
            your_image: 'assets/images/steering.png',
            your_text: 'Home',
            your_color: Color(0xFFF4C260),
          ),
        ),
        InkWell(
          onTap: (){
            Get.to(() => CarSection());
          },
          child: Stories(
            your_image: 'assets/images/honda 1.png',
            your_text: 'Cars',
            your_color: Color(0xFFF4C260),
          ),
        ),
        InkWell(
          onTap: (){
            Get.to(() => BikeSection());
          },
          child: Stories(
            your_image: 'assets/images/bike1.png',
            your_text: 'Bikes',
            your_color: Color(0xFFc3e0fb),
          ),
        ),
        InkWell(
          onTap: (){
            Get.to(() => ConstructionSection());
          },
          child: Stories(
            your_image: 'assets/images/exca.png',
            your_text: 'Constructions',
            your_color: Color(0xFFFDDEDF),
          ),
        ),
      ],
    );
  }
}
