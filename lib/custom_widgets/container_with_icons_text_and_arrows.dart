import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ContainerWithIconsTextArrows extends StatelessWidget {
  final Icon your_icon;
  final String your_text;
  final String your_next_text;

  ContainerWithIconsTextArrows(
      {this.your_icon, this.your_text, this.your_next_text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 54,
        decoration: BoxDecoration(
            // color: Colors.green,
            ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            your_icon,
            SizedBox(
              width: 18,
            ),
            Text(
              your_text,
              style: ProfileScreenAppBarTextTheme(),
            ),
            Spacer(),
            Text(
              your_next_text,
              style: ProfileScreenBodyText1(),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ));
  }
}
