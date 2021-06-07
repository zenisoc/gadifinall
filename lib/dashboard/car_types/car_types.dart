import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_image_and_text.dart';

class CarTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,0),
            child: Text("New Cars",style: HeadingFourBold(),),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,0),
            child: Text("Used Cars",style: HeadingFourBold(),),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
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
                    image: "assets/images/oldcar.png",
                    text: "Old Car",
                    color: containerGreen,
                  ),
                  ContainerImageText(
                    image: "assets/images/oldexca.png",
                    text: "Old Excavator",
                    color: containerBlue,
                  ),
                  ContainerImageText(
                    image: "assets/images/oldbike.png",
                    text: "Old Bike",
                    color: containerDarkGreen,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
