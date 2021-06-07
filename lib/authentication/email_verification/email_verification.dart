import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/email_verification/email_verification_controller.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_textfield.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_icon.dart';
import 'package:get/get.dart';
class EmailVerification extends StatelessWidget {
  String email;
  EmailVerification({this.email});
  EmailVerficationController _emailVerficationController = Get.put(EmailVerficationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180,
                ),
                Center(
                  child: Text(
                    " VERIFICATION CODE",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        fontFamily: "HelveticaBold"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Please type the 6 digit code send to your email aadress",
                  style: TextStyle(fontSize: 12, fontFamily: "mono"),
                ),
                SizedBox(
                  height: 40,
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller1),
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller2),
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller3),
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller4),
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller5),
                    ContainerTextField(
                        textEditingController:
                            _emailVerficationController.controller6),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "RESEND CODE",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){
                          _emailVerficationController.UserVerification( email);

                        },
                        child: CustomContainerWithIcon(
                          pigment: themeTextColor,
                          height: 55,
                          width: 180,
                          image: "",
                          textcolor: Colors.white,
                          text: "CONFIRM",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
