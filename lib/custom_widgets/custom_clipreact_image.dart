import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ClipreactImage extends StatelessWidget {
  String image;
  String text;
  double height;
  double width;
  Color color;

  ClipreactImage({this.image, this.text, this.height, this.width,this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: color,
            height:  height,
            width:  width,
            child: Image.asset(image, fit:BoxFit.fill,),
          ),
        ),
        Positioned(
          top: 5,
          left: 15,
          child: Text(
            text,
            style: TextStyle(fontSize: 14, fontFamily: "mono", color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
