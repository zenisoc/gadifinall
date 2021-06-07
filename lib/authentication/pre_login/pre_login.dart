import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:gaadibazaar/authentication/pre_login/pre_login_controller.dart';
import 'package:gaadibazaar/authentication/sign_up/sign_up.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/container_with_text.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class PreLogin extends StatelessWidget {
  // PreLoginController preLoginController = Get.put(PreLoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Lottie.asset('assets/images/caranimation.json'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.009),
              Text(
                'Gaadi Bazaar',
                textScaleFactor: 1,
                style: new TextStyle(
                    fontSize: 40.0,
                  color: themeTextColor,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {


                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.pink,
                  child: InkWell(
                    onTap: (){
                      // preLoginController.googleLogin();
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/googleLogo.png')),
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
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
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
                          backgroundImage: AssetImage('assets/images/facebookLogo.png')),
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Divider(color: Colors.grey),
                      )),
                  Center(
                      child: Text(
                        'OR',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Divider(color: Colors.grey),
                      )),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){

                        },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: ContainerWithText(
                          // width: 168,
                          // height: 54,
                          text: 'Sign up',
                          textcolor: Colors.green,
                          textsize: 16,
                          fontFamily: 'Helvetica',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Get.to( Login());
                        },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,

                        child: ContainerWithText(
                          // width: 168,
                          // height: 54,
                          text: 'Login',
                          textcolor: Colors.green,
                          textsize: 16,
                          fontFamily: 'Helvetica',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 15,),

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
    );
  }
}

// class PreLogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               children: [
//
//
//               ],
//             ),
//           ),
//         )
//       )
//
//     );
//   }
// }
// class PreLogin extends StatelessWidget {
//   final GlobalKey<FormState> formkey1= GlobalKey();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Form(
//             key: formkey1,
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CustomContainerWithIcon(
//                     pigment: Colors.white24,
//                     textcolor: textGreen,
//                     height: 55,
//                     width: MediaQuery.of(context).size.width,
//                     image: 'assets/images/Google.png',
//                     text: "            Continue with Google",
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   CustomContainerWithIcon(
//                     pigment: Colors.white24,
//                     textcolor: textGreen,
//                     height: 55,
//                     width: MediaQuery.of(context).size.width,
//                     image: 'assets/images/Facebook.png',
//                     text: "            Continue with Facebook",
//                   ),
//
//
//
//
//
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Divider(
//                           color: Colors.grey,
//                           thickness: 0.7,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Center(
//                           child: Text(
//                             "OR",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Divider(
//                           color: Colors.grey,
//                           thickness: 0.7,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: CustomContainerWithIcon(
//                       image: "",
//                       textcolor: textColor,
//                       text: "Sign up",
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Expanded(
//                     child: CustomContainerWithIcon(
//                       image: "",
//                       textcolor: textColor,
//                       text: "Log in",
//                     ),
//                   ),
//                 ],
//               )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
