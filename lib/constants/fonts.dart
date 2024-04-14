import 'package:flutter/material.dart';

class StyleText {
  static const String customfont1 = 'Inter';
  static const String customfont2 = 'Quicksand';

  static TextStyle getRegularStyle({
    String fontFamily = customfont2,
    FontWeight fontWeight = FontWeight.w600,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 16.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontSize: fontSize,
        color: color);
  }

  static TextStyle getBoldStyle({
    String fontFamily = customfont2,
    FontWeight fontWeight = FontWeight.w700,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = 16.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      color: color,
    );
  }
}
