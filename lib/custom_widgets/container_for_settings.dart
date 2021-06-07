import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
class ContainerForSetting extends StatelessWidget {
  String setting_name;

  ContainerForSetting({this.setting_name});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
          border: Border(
          top: BorderSide(width: 1.0, color: Colors.white10),
      bottom: BorderSide(width: 1.0, color: Colors.grey),
      ),
        ),
        height: 58,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 0, 18),
          child: Text(setting_name,style:ProfileScreenBodyText1()),
        ),
      ),
    );
  }
}
