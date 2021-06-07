import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  Color colour;
  HomeContainer({this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: 206,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),

    );
  }
}
