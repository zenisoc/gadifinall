import 'package:flutter/material.dart';
import 'package:gaadibazaar/authentication/login/login_controller.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/custom_container_with_icon.dart';
import 'package:gaadibazaar/custom_widgets/custom_textformfield.dart';
import 'package:get/get.dart';

import 'change_password_controller.dart';

class ChangePassword extends StatelessWidget {
  final GlobalKey<FormState> formkey= GlobalKey();
  ChangePasswordController _changePasswordController = Get.put(ChangePasswordController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height:MediaQuery.of(context).size.height*0.2,
                    ),
                    CustomTextFormField(
                      // stage: true,
                      obscureText: false,
                      labeltext: 'Email' ,
                      hint: 'Email',
                      icon: null,
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
                      controller: _changePasswordController.emailController2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      // stage: true,
                      obscureText: true,
                      labeltext: 'Old Password' ,
                      hint: 'Old Password',
                      icon: null,
                      validator: (value) {
                        if(value== ""){
                          return "Password cannot be empty";
                        }
                      },
                      controller: _changePasswordController.oldPasswordController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      labeltext: 'New Password' ,
                      // stage: true,
                      obscureText: true,
                      controller: _changePasswordController.newPasswordController,
                      hint: 'New Password',
                      icon: null,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      // stage: true,
                      obscureText: true,
                      labeltext: 'Retype Password' ,
                      controller: _changePasswordController.retypePasswordController,
                      hint: 'Retype Password',
                      icon: Icon(Icons.arrow_forward,color: themeTextColor,),
                      validator: (value) {
                        if( _changePasswordController.newPasswordController.text!=_changePasswordController.retypePasswordController.text){
                          return "Password does not match";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w500,
                        color:themeTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.info_outline,
                    //       color: themeTextColor,
                    //       size: 35,
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //         "Set your new password  ",
                    //       // so that u can login and access all the features of Mero Bazar
                    //         style: TextStyle(
                    //           fontSize: 12,
                    //           color: Colors.grey,
                    //         )),
                    //   ],
                    // ),
                    //
                    //
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     InkWell(
                    //       onTap: (){
                    //         if(formkey.currentState.validate()){
                    //           _changePasswordController.PasswordChange();
                    //         }
                    //       },
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(20),
                    //         child: CustomContainerWithIcon(
                    //           pigment: themeTextColor,
                    //           height: 55,
                    //           width: 160,
                    //           image: "",
                    //           textcolor: Colors.white,
                    //           text: "Reset Password ",
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
