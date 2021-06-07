import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/container_for_settings.dart';
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Setting',style: ProfileScreenAppBarTextTheme(),),
        leading: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 15,),
        elevation: 0,
      ),
      body: Column(
        children: [
          ContainerForSetting(
            setting_name: 'About Gaadi Bazaar',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Rate Gaadi Bazaar',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Follow Gaadi Bazaar',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Terms & Conditions',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Privacy Policy',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Notifications',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Log Out',
          ),
          SizedBox(height: 25,),

          Center(child:
          Column(
            children: [
              Text(
                'Gaadi Bazaar',
                textScaleFactor: 1,
                style: new TextStyle(
                  fontSize: 32.0,
                  color: themeTextColor,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'दुरी दुरीको साथी ',
                // textScaleFactor: 1,
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                  fontFamily: 'Helvetica',

                ),
              ),

            ],
          ),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Version 1.0',style: ProfileScreenBodyText1(),),
              Text('Part of NANDI TECHNOLOGY',style: ProfileScreenBodyText1(),),

            ],
          ),

        ],

      ),
    );
  }
}
