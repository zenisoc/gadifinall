import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/price_range_buttons.dart';

import 'conditions.dart';

class BikeFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF027C25),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Center(
                      child: Text(
                        'RESET',
                        style: SearchScreenAppBarResetText(),
                      ),
                    )),
                onPressed: () {},
              ),
            )
          ],
          title: Row(
            children: [
              Text('Search for Bikes / Scooters', style: SearchScreenAppBarTheme()),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conditions',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Helvetica',
                      color: Colors.green),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                       child: Column(
                          children: [
                            Image.asset('assets/images/redBike.png'),
                            Text('Used Bike',style: ContainerHeadingText(),)
                          ],
                        ),
                    ),
                    Expanded(
                      child: Conditions(your_image: 'assets/images/yellowBike.png',your_text: 'Used Bike',),
                    ),
                    Expanded(
                      child: Conditions(your_image: 'assets/images/blackScooter.png',your_text: 'Used Bike',),
                    ),
                    Expanded(
                      child: Conditions(your_image: 'assets/images/blueScooter.png',your_text: 'Used Bike',),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Search by Brand / model name / features',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Yamaha / NIU / Pulser / Disc Brake / lot no.',
                      style: ContainerBodyText(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Price',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: Colors.transparent,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: PriceRangeButton()),
                      Expanded(child: PriceRangeButton()),
                      Expanded(child: PriceRangeButton()),
                      // Expanded(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       border:
                      //       Border.all(color: Colors.green, width: 2),
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //     child: TextButton(
                      //       onPressed: () {},
                      //       child: Text(
                      //         '1-6 Lakh',
                      //         style: ContainerBodyText(),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 17,
                ),

                Text(
                  'Fuel Types',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child : FuelTypes(
                        fuel_image: 'assets/images/petrol-station.png',
                        fuel_type: 'petrol',
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            // height: MediaQuery.of(context).size.height*0.1,
                            // width: MediaQuery.of(context).size.width*0.2,
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              children: [
                                Image.asset('assets/images/petrol-station.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Electric', style: ContainerBodyText()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFF027C25),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Apply Filters',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Helvetica',
                          color: Colors.white),
                    ),
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

ContainerHeadingText() {
  return TextStyle(fontSize: 14, fontFamily: 'Helvetica', color: Colors.green);
}

ContainerBodyText() {
  return TextStyle(fontSize: 14, fontFamily: 'Helvetica', color: Colors.grey);
}
