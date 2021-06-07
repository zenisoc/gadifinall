import 'package:flutter/material.dart';


  const textColor =  Color(0xFF9098B1);
const containerPink =  Color(0xFFFABEC0);
const containerGreen =  Color(0xFF9FE6B5);
const containerBlue =  Color(0xFFC3E0FB);
const containerOrange =  Color(0xFFFBA803);
const containerDarkGreen =  Color(0xFF017121);
const containerDarkBlue =  Color(0xFF0483FA);
const textGreen =  Color(0xFF537B5C);
  const themeTextColor = Color(0xFF008000);
  const textWeightBold =  FontWeight.w600;
 const textWeightRegular =  FontWeight.w400;
  const fontFamilyRegular = 'Helvetica';
  const fontFamilyBold = 'HelveticaBold';
const appBarTextColor = Color(0xFF223263);



  HeadingOneBold (){
    return TextStyle(fontFamily: fontFamilyBold,fontSize: 24, color:  textColor , fontWeight: textWeightBold );
  }
  HeadingOneRegular (){
    return TextStyle(fontFamily: fontFamilyRegular,fontSize: 24,color:  textColor , fontWeight: textWeightRegular );
  }
  HeadingTwoBold (){
    return TextStyle(fontFamily: fontFamilyBold,fontSize: 16,color:  textColor , fontWeight: textWeightBold);
  }
  HeadingTwoRegular (){
    return TextStyle(fontFamily: fontFamilyRegular,fontSize: 16,color:  textColor , fontWeight: textWeightRegular);
  }
  HeadingThreeBold (){
    return TextStyle(fontFamily: fontFamilyBold,fontSize: 14,color:  textColor , fontWeight: textWeightBold);
  }
  HeadingThreeRegular (){
    return TextStyle(fontFamily: fontFamilyRegular,fontSize: 14,color:  textColor , fontWeight: textWeightRegular);
  }
HeadingFourBold (){
  return TextStyle(fontFamily: fontFamilyBold,fontSize: 16,color:  Colors.black , fontWeight: textWeightBold);
}
HeadingBold (){
  return TextStyle(fontFamily: fontFamilyBold,fontSize: 24, color:  Colors.black , fontWeight: textWeightBold );
}
HeadingThreeGreenBold (){
  return TextStyle(fontFamily: fontFamilyRegular,fontSize: 18,color:  themeTextColor , fontWeight: FontWeight.w100);
}

ProfileScreenAppBarTextTheme() {
  return TextStyle(
      fontFamily: fontFamilyBold,
      fontSize: 14,
      color: appBarTextColor,
      fontWeight: textWeightBold);
}

ProfileScreenBodyText1() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 14,
      color: Colors.grey,
      fontWeight: textWeightRegular);
}

ProfileScreenBodyText2() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 16,
      color: Colors.black,
      fontWeight: textWeightRegular);
}
ProfileScreenBodyBoldText() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 24,
      color: Colors.black,
      fontWeight: textWeightBold);
}
CarScreenBody(){
    return TextStyle(
        fontFamily: fontFamilyRegular,
        fontSize: 12,
        color: Colors.black,
        fontWeight: textWeightRegular
    );
}
CarScreenBody1(){
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 14,
      color: Colors.black,
      fontWeight: textWeightBold
  );
}
CarScreenBody2(){
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 14,
      color: Colors.black,
      fontWeight: textWeightRegular
  );
}
CarScreenBody3() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 12,
      color: Colors.grey,
      fontWeight: textWeightRegular);
}
SearchScreenAppBarTheme() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 14,
      color: Colors.white,
      fontWeight: textWeightBold);
}
SearchScreenAppBarResetText() {
  return TextStyle(
      fontFamily: fontFamilyRegular,
      fontSize: 12,
      color: Colors.green,
      fontWeight: textWeightRegular);
}

