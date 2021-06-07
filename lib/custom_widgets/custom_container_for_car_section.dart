import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ContainerForCarSection extends StatelessWidget {
  String your_image;
  String price_text;
  String seller_text;
  String model;
  String milage;

  ContainerForCarSection({this.your_image, this.price_text, this.seller_text,this.model,this.milage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
                child: Image.asset(your_image,height: 250,width: 400,fit: BoxFit.fill,),
                borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Text(
                  price_text,
                  style: CarScreenBody1(),
                ),
              ),
              Expanded(
                child: Text(
                  seller_text,
                  style: CarScreenBody2(),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(model,style: CarScreenBody3(),),
          Text(milage,style: CarScreenBody3(),),
          SizedBox(height: 5,),

        ],
      ),
    );
  }
}
