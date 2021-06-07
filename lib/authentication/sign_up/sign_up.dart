import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/sign_up/sign_up_controller.dart';
import 'package:gaadibazaar/custom_widgets/body_text_widget.dart';
import 'package:gaadibazaar/custom_widgets/text_form_field_with_icons.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  SignUpController _signUpController = Get.put(SignUpController());

  final GlobalKey<FormState> formkeyS = GlobalKey<FormState>();

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.green[600], Colors.green[900]],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 20.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.009),
                Text(
                  'Gaadi Bazaar',
                  textScaleFactor: 1,
                  style: new TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Form(
                  key: formkeyS,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: bodyTextWidget('Create an new account'),
                      ),
                      // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      TextFormFieldWithIcon(
                        controller: _signUpController.nameController,
                        validator: (value) {
                          if (value == "") {
                            return "Name cannot be empty";
                          }
                        },
                        labeltext: "Name",
                        hintTexts: "Full Name or Company Name",
                        prefixIcon: Icon(Icons.person),
                        ktype: TextInputType.text,
                      ),
                      // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      TextFormFieldWithIcon(
                        validator: (value) {
                          if (value == "") {
                            return "Phone number cannot be empty";
                          }
                        },
                        labeltext: "Phone number",
                        hintTexts: "Your Phone Number",
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        ktype: TextInputType.number,
                      ),
                      // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      TextFormFieldWithIcon(
                        controller: _signUpController.emailController,
                        labeltext: "Email",
                        hintTexts: "Your Email",
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
                        prefixIcon: Icon(Icons.email_outlined),
                        ktype: TextInputType.emailAddress,
                      ),
                      TextFormFieldWithIcon(
                        validator: (value){
                          var x = value.contains(new RegExp(r'[0-9]'));
                          if(value==""){
                            return "Password cannot be empty";
                          }
                          else if(value.length<8){
                            return "Password cannot be less than 8 digits";
                          }
                          else if(x==false){
                            return "Password must contain a numerical value";
                          }
                        },
                        controller: _signUpController.passwordController,
                        labeltext: "Password",
                        hintTexts: "Password",
                        stage: true,
                        prefixIcon: Icon(Icons.lock_outline_sharp),
                        ktype: TextInputType.text,
                      ),
                      TextFormFieldWithIcon(
                        controller: _signUpController.passwordAgainController,
                        labeltext: "Password Again",
                        hintTexts: "Password Again",
                        stage: true,
                        validator: (value) {
                          if (_signUpController.passwordController.text !=
                              _signUpController.passwordAgainController.text) {
                            return "Password does not match";
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icon(Icons.lock_outline_sharp),
                        suffixIcon: Icon(Icons.check_circle_outline_outlined,
                            color: Colors.lightGreen),
                        ktype: TextInputType.text,
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
                              if (formkeyS.currentState.validate() == true) {
                                _signUpController.Register();
                              }

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(0, 128, 0, 1)),
                              // minimumSize: MaterialStateProperty.all<size>
                            ),
                            child: Text('Sign up',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Helvetica',
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bodyTextWidget('have an account?  '),
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 128, 0, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By signing in you agree to our',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Terms & Conditions.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

EmailInUse() {
  return Get.snackbar('Error', "Email already in use",
      duration: Duration(seconds: 5),
      backgroundColor: Colors.green,
      colorText: Colors.white);
}
