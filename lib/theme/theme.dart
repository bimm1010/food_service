import 'package:flutter/material.dart';

const kColorPrimaryTheme = Color(0xffEEA734);
const kColorFacebookBtn = Color(0xff395998);
const kColorGoogleBtn = Color(0xff4285F4);
const kColorTextBtn = Color(0xffFFFFFF);

class PrimaryFont {
  static TextStyle thin(double size) {
    return TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: size,
    );
  }

  static TextStyle light(double size) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: size,
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: size,
    );
  }
}
