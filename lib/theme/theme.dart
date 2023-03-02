import 'package:flutter/material.dart';

const kColorPrimaryTheme = Color(0xffEEA734);

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
