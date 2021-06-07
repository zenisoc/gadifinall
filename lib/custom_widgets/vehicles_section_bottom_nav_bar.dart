import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehiclesSectionBottomNavBar extends StatelessWidget {
  String ButtonText1;
  String ButtonText2;

  VehiclesSectionBottomNavBar({this.ButtonText1, this.ButtonText2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      // height: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            width: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(ButtonText1,style: TextStyle(fontSize: 14,fontFamily: 'Helvetica',color: Colors.green),),
            ),
          ),
          Container(
            height: 55,
            width: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(ButtonText2,style: TextStyle(fontSize: 14,fontFamily: 'Helvetica',color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
