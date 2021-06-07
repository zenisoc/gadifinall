import 'package:flutter/material.dart';

import 'bike_filter.dart';
class Conditions extends StatelessWidget {
  String your_image;
  String your_text;
  String your_style;

  Conditions({this.your_image, this.your_text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(your_image),
        Text(your_text,style: ContainerBodyText(),)
      ],
    );
  }
}
