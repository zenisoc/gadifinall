import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainerWithIcon extends StatelessWidget {
  double width;
  double height;
  String image;
  String text;
  Color pigment;
  Color textcolor;

  CustomContainerWithIcon(
      {this.height,
      this.width,
      this.image,
      this.text,
      this.pigment,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: pigment,
          border: Border.all(color: Colors.grey[200], width: 1)),
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment:
            image == "" ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          image == ""
              ? Container()
              : Image.asset(
                  image,
                  width: 25,
                  height: 25,
                  fit: BoxFit.fill,
                ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textcolor,
                    fontSize: 14,
                    fontFamily: "Helvetica"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
