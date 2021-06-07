import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:gaadibazaar/authentication/pre_login/pre_login.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_image_and_text.dart';
import 'package:gaadibazaar/custom_widgets/custom_explore_text.dart';
import 'package:gaadibazaar/custom_widgets/text_form_field_with_icons.dart';
import 'package:gaadibazaar/dashboard/car_types/car_types.dart';
import 'package:gaadibazaar/dashboard/category/category.dart';
import 'package:gaadibazaar/dashboard/sell/sell.dart';
import 'package:gaadibazaar/listing/listing_bike/listing_bike.dart';
import 'package:gaadibazaar/listing/listing_car/listing_car.dart';
import 'package:gaadibazaar/listing/listing_excavator/listing_excavator.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  List screens = [
    Home(),
    Sell(),
    Home(),
    PreLogin(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(

          child:FocusedMenuHolder(
            openWithTap: true,
            menuWidth: MediaQuery.of(context).size.width * 0.24,
            menuItemExtent: 70,
            duration: Duration(milliseconds: 300),
            menuBoxDecoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 5,
                    spreadRadius: 1)
              ],
            ),
            onPressed: () {},
            menuItems: [
              FocusedMenuItem(
                title: Image.asset('assets/images/menuCar.png'),
                onPressed: () {
                  Get.to(
                        () => ListingCar(),
                  );
                },
              ),
              FocusedMenuItem(
                title: Image.asset('assets/images/menuScooter.png'),
                onPressed: () {
                  Get.to(
                        () => ListingBike(),
                  );
                },
              ),
              FocusedMenuItem(
                title: Image.asset('assets/images/menuLoader.png'),
                onPressed: () {
                  Get.to(
                        () => ListingExcavator(),
                  );
                },
              ),
            ],
            child: Icon(Icons.camera_alt_outlined),
          ),
        ),
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.red,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: "Discover",
            ),
            BottomNavigationBarItem(
              icon: FocusedMenuHolder(
                openWithTap: true,
                menuWidth: MediaQuery.of(context).size.width * 0.24,
                menuItemExtent: 70,
                duration: Duration(milliseconds: 300),
                menuBoxDecoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                ),
                onPressed: () {},
                menuItems: [
                  FocusedMenuItem(
                    title: Image.asset('assets/images/menuCar.png'),
                    onPressed: () {
                      Get.to(
                        () => ListingCar(),
                      );
                    },
                  ),
                  FocusedMenuItem(
                    title: Image.asset('assets/images/menuScooter.png'),
                    onPressed: () {
                      Get.to(
                            () => ListingBike(),
                      );
                    },
                  ),
                  FocusedMenuItem(
                    title: Image.asset('assets/images/menuLoader.png'),
                    onPressed: () {
                      Get.to(
                            () => ListingExcavator(),
                      );
                    },
                  ),
                ],
                child: Icon(Icons.camera_alt_outlined),
              ),
              label: "Sell",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "My Account",
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(" kathmandu"),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormFieldWithIcon(
                      labeltext: "Search",
                      backgroundColor: Colors.grey,
                      hintTexts: "search for bikes, car, excravator and other",
                      prefixIcon: Icon(Icons.search),
                      ktype: TextInputType.text,
                    ),
                  ),

                ],
              ),
              Text(
                "FEATURED",
                style: HeadingThreeRegular(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/images/car.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/images/exca.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/images/bike.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/images/porshe.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      aspectRatio: 16 / 9,
                      initialPage: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ContainerImageText(
                      image: "assets/images/porshe.png",
                      text: "New Car",
                      color: containerGreen,
                    ),
                    ContainerImageText(
                      image: "assets/images/ducati.png",
                      text: "New Bike",
                      color: containerBlue,
                    ),
                    ContainerImageText(
                      image: "assets/images/exca.png",
                      text: "New Excavator",
                      color: containerOrange,
                    ),
                    ContainerImageText(
                      image: "assets/images/Tesla.png",
                      text: "New Electric",
                      color: containerPink,
                    ),
                    ContainerImageText(
                      image: "assets/images/truck.png",
                      text: "New Truck",
                      color: containerDarkBlue,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ContainerImageText(
                      image: "assets/images/oldbike.png",
                      text: "Old Bike",
                      color: containerDarkGreen,
                    ),
                    ContainerImageText(
                      image: "assets/images/oldcar.png",
                      text: "Old Car",
                      color: containerGreen,
                    ),
                    ContainerImageText(
                      image: "assets/images/truck.png",
                      text: "Old Truck",
                      color: containerPink,
                    ),
                    ContainerImageText(
                      image: "assets/images/Tesla.png",
                      text: "Old Electric",
                      color: containerDarkBlue,
                    ),
                    ContainerImageText(
                      image: "assets/images/oldexca.png",
                      text: "Old Excavator",
                      color: containerBlue,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "  Car by body types",
                style: HeadingFourBold(),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                  labelPadding: EdgeInsets.only(left: 0, right: 8, bottom: 4),
                  tabs: [
                    Text(
                      "HATCHBACK",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "SEDAN",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "SUV",
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(children: [
                  CarTypes(),
                  CarTypes(),
                  CarTypes(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "  New Cars",
                  style: HeadingFourBold(),
                ),
              ),
              Category(
                priceFirst: "Below 30 lakhs",
                priceSecond: "30-70 lakhs",
                priceThird: "70 lakhs - One crore",
                priceFourth: "Above One crore",
              ),
              Text(
                "  Popular car bands",
                style: HeadingFourBold(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/ca.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/car.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/car1.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/car.svg",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "  Popular Bike bands",
                style: HeadingFourBold(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/car1.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/ca.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/carlogo/car.svg",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Category(
                priceFirst: "Bikes below 1 lakh",
                priceSecond: "1-5 lakhs",
                priceThird: "5-10 lakhs",
                priceFourth: "Above 10 lakhs",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explore more...",
                  style: HeadingBold(),
                ),
              ),
              ExploreText(
                header: "News",
                subHeader: "(coming soon..)",
                body: "Everthing about vehicles",
              ),
              ExploreText(
                header: "Jobs",
                subHeader: "(coming soon..)",
                body: "All jobs related to vehicles",
              ),
              ExploreText(
                header: "Vechiles parts",
                subHeader: "(coming soon...)",
                body: "Find all your vehicle parts and Accessories",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
