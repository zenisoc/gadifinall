import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/forgot_password/forgot_password_controller.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_icon.dart';
import 'package:gaadibazaar/custom_widgets/custom_textformfield.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPasseordController _forgotPasseordController = Get.put(ForgotPasseordController());
  final GlobalKey<FormState> formkey3= GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height*0.9,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.2,
                  ),
                  CustomTextFormField(
                    obscureText: false,
                    controller: _forgotPasseordController.emailController,
                    labeltext: "Email",
                    hint: 'Email',
                    icon: null,
                    validator: (value) {
                      if(value== ""){
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 40, color: themeTextColor,fontWeight: FontWeight.w500, fontFamily: "mono", ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Icon(Icons.info_outline,color: themeTextColor , size: 35,),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                              "Enter your email associated with your account and we will send you instructions to reset your password ",
                              style: TextStyle(fontSize: 12, color: Colors.grey,)
                          ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          formkey3.currentState.validate();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: ()
                            {
                              if(formkey3.currentState.validate()==true){
                                _forgotPasseordController.postForgotPassword();
                              }
                            },
                            child: CustomContainerWithIcon(

                              pigment: themeTextColor,
                              height: 55,
                              width: 150,
                              image: "",
                              textcolor: Colors.white,
                              text: "Continue ",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
