import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/price_range_buttons.dart';

class CarsFilter extends StatelessWidget {
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
              Text('Search for Cars', style: SearchScreenAppBarTheme()),
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
                Container(
                  padding: EdgeInsets.all(5),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/oldcar.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/car.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
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
                  'Car Brand / name',
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
                      'Hyundai or i20 or i20 Active or Hyundai i20 ',
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: PriceRangeButton()),
                          Expanded(child: PriceRangeButton()),
                          Expanded(child: PriceRangeButton()),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: PriceRangeButton()),
                          Expanded(child: PriceRangeButton()),
                          Expanded(child: PriceRangeButton()),
                          // Expanded(
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       border:
                          //           Border.all(color: Colors.green, width: 2),
                          //       borderRadius: BorderRadius.circular(6),
                          //     ),
                          //     child: TextButton(
                          //       onPressed: () {},
                          //       child: Text(
                          //         'Below 10 lakh',
                          //         style: ContainerBodyText(),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
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
                  'Body Types',
                  style: ContainerHeadingText(),
                ),
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/menuCar.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Hatchback',
                              style: ContainerBodyText(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/menuCar.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Sedan',
                              style: ContainerBodyText(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/menuCar.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SUV',
                              style: ContainerBodyText(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'Transmission',
                  style: ContainerHeadingText(),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Manual', style: ContainerBodyText()),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Automatic', style: ContainerBodyText()),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'Fuel Types',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FuelTypes(
                        fuel_image: 'assets/images/petrol-station.png',
                        fuel_type: 'petrol',
                      ),
                    ),
                    Expanded(
                      child: FuelTypes(
                        fuel_image: 'assets/images/petrol-station.png',
                        fuel_type: 'Diesel',
                      ),
                    ),
                    Expanded(
                      child: FuelTypes(
                        fuel_image: 'assets/images/petrol-station.png',
                        fuel_type: 'Electric',
                      ),
                    ),
                    // Expanded(
                    //   child: Column(
                    //     children: [
                    //       Image.asset('assets/images/petrol-station.png'),
                    //       SizedBox(
                    //         height: 5,
                    //       ),
                    //       Text('Electric', style: ContainerHeadingText()),
                    //     ],
                    //   ),
                    // ),
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
