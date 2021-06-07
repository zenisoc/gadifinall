

import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_image_and_text.dart';



class Category extends StatelessWidget {
  String priceFirst;
  String priceSecond;
  String priceThird;
  String priceFourth;

  Category({
      this.priceFirst, this.priceSecond, this.priceThird, this.priceFourth});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        // color: Colors.redAccent,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: containerDarkGreen,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    priceFirst,
                    style: TextStyle(color: themeTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    priceSecond,
                    style: TextStyle(color: themeTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    priceThird,
                    style: TextStyle(color: themeTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    priceFourth,
                    style: TextStyle(color: themeTextColor),
                  ),
                ),
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                children: [
                  Lists(),
                  Lists(),
                  Lists(),
                  Lists(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          ContainerImageText(
            image: "assets/images/exca.png",
            text: "New Excavator",
            color: containerOrange,
          ),

          ContainerImageText(
            image: "assets/images/ducati.png",
            text: "New Bike",
            color: containerBlue,
          ),
          ContainerImageText(
            image: "assets/images/truck.png",
            text: "New Truck",
            color: containerDarkBlue,
          ),
          ContainerImageText(
            image: "assets/images/Tesla.png",
            text: "New Electric",
            color: containerPink,
          ),
        ],
      ),
    );
  }
}
