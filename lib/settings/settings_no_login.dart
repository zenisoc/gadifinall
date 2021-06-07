import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/container_for_settings.dart';

class SettingsNoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Account',
          style: ProfileScreenAppBarTextTheme(),
        ),
        leading: Icon(
          Icons.person_outline_rounded,
          color: Colors.black,
          size: 20,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffe8e8e8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login to unlock all features',style: ProfileScreenBodyText1(),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 168,
                          height: 54,
                          color: Colors.white,
                          child: Center(child: Text('Sign up',style: TextStyle(color:Colors.green),)),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 168,
                          height: 54,
                          color: Colors.white,
                          child: Center(child: Text('Log in',style: TextStyle(color:Colors.green),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ContainerForSetting(
            setting_name: 'About Gaadi Bazaar',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Terms & Conditions',
          ),
          SizedBox(height: 0.5,),
          ContainerForSetting(
            setting_name: 'Privacy Policy',
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
          ),
          ),
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
