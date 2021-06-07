import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
class TextFormFieldWithIcon extends StatelessWidget {
  
  String hintTexts;
  Icon prefixIcon;
  Icon suffixIcon;
  Color textColor;
  TextInputType ktype;
  Color backgroundColor;
  String labeltext;
  final bool stage;
  final Function validator;
  final TextEditingController controller;
  TextFormFieldWithIcon({this.hintTexts,this.stage, this.controller,this.validator,this.prefixIcon,this.textColor,this.suffixIcon,this.ktype,this.backgroundColor,this.labeltext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Theme(
        child: TextFormField(
          controller: controller,
          keyboardType: ktype,
          decoration: InputDecoration(
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
            hintText: hintTexts,
            hintStyle: TextStyle(color: textColor,fontFamily: 'Poppins',fontSize: 12),
            prefixIcon: prefixIcon,
            focusColor: Colors.red,
            suffixIcon: suffixIcon,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          obscureText: stage == null ? false : true,
          onTap: () {},
        ),
        data: Theme.of(context)
            .copyWith(primaryColor: themeTextColor,),
      ),
    );
  }
}



