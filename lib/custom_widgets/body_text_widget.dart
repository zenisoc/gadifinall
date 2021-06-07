import 'package:flutter/material.dart';
class bodyTextWidget extends StatelessWidget {
  String bodyText;

  bodyTextWidget(this.bodyText);

  @override
  Widget build(BuildContext context) {
    return Text(bodyText,
      style: TextStyle(fontSize: 12,fontFamily: 'poppins',color: Colors.black54),
    );
  }
}

