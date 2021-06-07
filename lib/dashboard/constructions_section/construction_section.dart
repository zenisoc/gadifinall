import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_for_car_section.dart';
import 'package:gaadibazaar/custom_widgets/vehicles_section_bottom_nav_bar.dart';
import 'package:gaadibazaar/dashboard/car_section/stories_like_circles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaadibazaar/dashboard/story_list/story_list.dart';
import 'package:gaadibazaar/listing/listing_excavator/listing_excavator.dart';
import 'package:get/get.dart';



class ConstructionSection extends StatelessWidget {
  List _items = [Icons.ac_unit, Icons.person_outline_rounded,Icons.work_outline,Icons.home];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: VehiclesSectionBottomNavBar(
          ButtonText1: 'SORT',
          ButtonText2: 'FILTER',
        ),
        floatingActionButton:Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.green,
              width: 1,
            ),),
          child:InkWell(
            onTap: (){
              Get.to(() => ListingExcavator());
            },
              child: Icon(Icons.camera_alt_outlined,color: Colors.green,)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: StoryList()
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // SizedBox(width: 10,),
                      Image.asset('assets/images/CAT.jpg',height: 50,width: 50,),
                      SizedBox(width: 20,),
                      Image.asset('assets/images/CAT.jpg',height: 50,width: 50,),
                      SizedBox(width: 20,),
                      Image.asset('assets/images/CAT.jpg',height: 50,width: 50,),
                      SizedBox(width: 20,),
                      SvgPicture.asset(
                        "assets/carlogo/ca.svg",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      ContainerForCarSection(
                        your_image: 'assets/images/jcb.jpg',
                        price_text: 'Rs.1,30,00,000',
                        seller_text: 'Seller:  Laxmi Internationals',
                        model: '2020| Toyota Tuscan | Blue',
                        milage:'Hatchback | 30,000 miles | Automatic | 1.7 Petrol',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ContainerForCarSection(
                        your_image: 'assets/images/excavator.jpg',
                        price_text: 'Rs.1,00,00,000',
                        seller_text: 'Seller:  Laxmi Internationals',
                        model: '2020| Toyota Tuscan | Blue',
                        milage:
                        'Hatchback | 30,000 miles | Automatic | 1.7 Petrol',
                      ),
                      SizedBox(
                        height: 130,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



