import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:gaadibazaar/api2/api.controller.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_for_car_section.dart';
import 'package:gaadibazaar/custom_widgets/vehicles_section_bottom_nav_bar.dart';
import 'package:gaadibazaar/dashboard/car_section/stories_like_circles.dart';
import 'package:gaadibazaar/dashboard/story_list/story_list.dart';
import 'package:gaadibazaar/listing/listing_car/listing_car.dart';
import 'package:get/get.dart';



class CarSection extends StatelessWidget {
  ApitwoController _apitwoController = Get.put(ApitwoController());
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
              Get.to(() => ListingCar());
            },
              child: Icon(Icons.camera_alt_outlined,color: Colors.green,)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: StoryList(),
                // ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     // SizedBox(width: 10,),
                //     // Center(
                //     //   child: Image.asset(
                //     //     'assets/images/steering.png',
                //     //     width: 40,
                //     //     height: 40,
                //     //   ),
                //     // ),
                //     Stories(
                //       your_image: 'assets/images/steering.png',
                //       your_text: 'Home',
                //       your_color: Color(0xFFF4C260),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/honda 1.png',
                //       your_text: 'Cars',
                //       your_color: Color(0xFFF4C260),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/bike1.png',
                //       your_text: 'Bikes',
                //       your_color: Color(0xFFc3e0fb),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/exca.png',
                //       your_text: 'Constructions',
                //       your_color: Color(0xFFFDDEDF),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/porshe.png',
                //       your_text: 'car',
                //       your_color: Color(0xFFc3e0fb),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/ducati.png',
                //       your_text: 'car',
                //       your_color: Color(0xFFc3e0fb),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/bus.png',
                //       your_text: 'car',
                //       your_color: Color(0xFFFDDEDF),
                //     ),
                //     Stories(
                //       your_image: 'assets/images/honda 1.png',
                //       your_text: 'car',
                //       your_color: Color(0xFFF4C260),
                //     )
                //   ],
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Found 20 ads in Pokhara',
                style: CarScreenBody(),
              ),
              SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: _apitwoController.usedCar(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    print("newcar");
                    return ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context,index){
                          return Container(
                            width:200,

                            child: Column(
                              children: [
                                Image.network(snapshot.data[index].image1.toString()),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(snapshot.data[index].price.toString()),
                                      SizedBox(width: 40,),
                                      Text(snapshot.data[index].status.toString()),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(snapshot.data[index].yearManufacture.toString()),
                                      SizedBox(width: 40,),
                                      Text(snapshot.data[index].model.toString()),
                                      SizedBox(width: 40,),
                                      Text(snapshot.data[index].milage.toString()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                    );
                  }
                  return  Container(
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




