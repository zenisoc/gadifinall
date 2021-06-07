import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContainerWithText extends StatelessWidget {
  double height;
  double width;
  String text;
  Color color;
  Color textcolor;
  double textsize;
  String fontFamily;

  ContainerWithText({this.height, this.width, this.text,this.color,this.textcolor,this.textsize,this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey,width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),

      width: width,
      height: height,

      child: Center(child: Text(text,textScaleFactor:1,style: TextStyle(color: textcolor,fontSize: textsize,fontFamily: fontFamily),)),




    );
  }
}
