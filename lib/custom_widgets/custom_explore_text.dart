import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ExploreText extends StatelessWidget {
  String header;
  String subHeader;
  String body;

  ExploreText({this.header, this.subHeader, this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  header,
                  style: HeadingFourBold(),
                ),
               SizedBox(
                 width: 10,
               ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subHeader,
                    style: HeadingThreeRegular(),
                  ),
                ),
              ],
            ),
            Text(
              body,
              style: HeadingThreeRegular(),
            ),

          ],
        ),
      ),
    );
  }
}
