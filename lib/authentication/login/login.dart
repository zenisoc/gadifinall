import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/login/login_controller.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/text_form_field_with_icons.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  LoginController _loginController = Get.put(LoginController());
  final GlobalKey<FormState> formkeyL = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkeyL,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.fromLTRB(0,0 , 0, 0),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Lottie.asset('assets/images/car2.json'),
                  ),
                  TextFormFieldWithIcon(
                    controller: _loginController.emailController,
                    labeltext: "Email",
                    hintTexts: "Your Email",
                    prefixIcon: Icon(Icons.email_outlined),
                    ktype: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == "") {
                        return "Email cannot be empty";
                      }
                      if (!RegExp(
                              "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                          .hasMatch(value)) {
                        return "invalid email";
                      }
                      return null;
                    },
                  ),
                  TextFormFieldWithIcon(
                    controller: _loginController.passwordController,
                    labeltext: "Password",
                    hintTexts: "Password",
                    stage: true,
                    prefixIcon: Icon(Icons.lock_outline_sharp),
                    ktype: TextInputType.text,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 12,
                      color: themeTextColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: "HelveticaBold",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.067,
                      child: TextButton(
                        onPressed: () {
                            if(formkeyL.currentState.validate()==true){
                              _loginController.Login();
                            }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(0, 128, 0, 1)),
                          // minimumSize: MaterialStateProperty.all<size>
                        ),
                        child: Text('Sign in',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Helvetica',
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Center(
                          child: Text(
                        'OR',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      )),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.pink,
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/googleLogo.png')),
                          SizedBox(
                            width: 60,
                          ),
                          Text('Continue with Google',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 14,
                                color: textGreen,
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green, width: 0.5),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      // color: Colors.pink,
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/facebookLogo.png')),
                          SizedBox(
                            width: 60,
                          ),
                          Expanded(
                            child: Text('Continue with Facebook',
                                style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 14,
                                  color: textGreen,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          'Dont have a account?  ',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )),
                        Text(
                          'Register.',
                          style: TextStyle(
                              fontFamily: "HelveticaBold",
                              color: themeTextColor,
                              fontSize: 12,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          'By signing in you agree to our',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )),
                        Text(
                          'Terms & Conditions.',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
