import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';


mixin Textstyle {
  static var robotoMedium = 'Roboto Medium';
  static var robotoRegular = 'Roboto Regular';
  static var robotoBold = 'Roboto Bold';

}

class CustomTextStyle {
  static const TextStyle welcomeStyle = TextStyle(
      color: ColorsConfig.blackD,
      fontFamily: 'Roboto Medium',
      fontSize: 20.0);
  static const TextStyle textInputStyle = TextStyle(
      color: ColorsConfig.greyN,
      fontFamily: 'Roboto Regular',
      );
  static const TextStyle buttonStyle = TextStyle(
    color: ColorsConfig.whiteColor,
    fontFamily: 'Roboto Medium',
      fontSize: 18.0
  );
  static const TextStyle textStyle = TextStyle(
      color: ColorsConfig.blackD,
      fontFamily: 'Roboto Regular',
      fontSize: 18.0);
  static const TextStyle congrtsStyle = TextStyle(
      color: ColorsConfig.red,
      fontFamily: 'Roboto Medium',
      fontSize: 20.0);
  static const TextStyle nameStyle = TextStyle(
      color: ColorsConfig.blackD,
      fontFamily: 'Roboto Bold',
      fontSize: 22.0);
  static const TextStyle assignedStyle = TextStyle(
      color: ColorsConfig.blackD,
      fontFamily: 'Roboto Regular',
      fontSize: 20.0);
  static const TextStyle counterStyle = TextStyle(
      color: ColorsConfig.red,
      fontFamily: 'Roboto Bold',
      fontSize: 24.0);
}
