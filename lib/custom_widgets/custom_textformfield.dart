import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class CustomTextFormField extends StatelessWidget {
  final String email;
  final String hint;
  final Icon icon;
  final Icon picon;
  final String pigment;
  final Function validator;
  final bool stage;
  final String labeltext;
  final TextEditingController controller;
  final bool obscureText;

  CustomTextFormField(
      {this.hint,
      this.icon,
      this.pigment,
      this.picon,
      this.email,
      this.validator,
      this.stage,
      this.labeltext,
      this.controller,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: icon,
        prefixIcon: picon,
        labelText: labeltext,
        labelStyle: TextStyle(
          color: themeTextColor
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: themeTextColor,
        )),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.grey,
        )),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red,
        )),
        fillColor: Colors.white70,
        hintText: hint,
        // icon:  icon,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      // obscureText: stage == null ? false : true,
      obscureText: obscureText,
      onTap: () {},

    );
  }
}
// :assert(hint != null && icon != null );
