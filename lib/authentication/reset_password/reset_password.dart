import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_icon.dart';
class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      CustomContainerWithIcon(
                        pigment: themeTextColor,
                        height: 55,
                        width: 400,
                        image: "",
                        textcolor: Colors.white,
                        text: "Open Email App ",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Reset email sent",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "popins",
                          fontWeight: FontWeight.w500,
                          color: themeTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: themeTextColor,
                              size: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                  "We have send a password recovery instructions to your email ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CustomContainerWithIcon(
                              pigment: themeTextColor,
                              height: 55,
                              width: 150,
                              image: "",
                              textcolor: Colors.white,
                              text: "Continue ",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
