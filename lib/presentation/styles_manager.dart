import 'package:advancedproject/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(Color color, FontWeight fontWeight, double fontSize) {
  return TextStyle(
    fontFamily: FontManager.fontFamily,
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}


// regular text style
TextStyle getRegularStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(color, FontWeightManager.regular, fontSize);
}


// light text style
TextStyle getLightStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(color, FontWeightManager.light, fontSize);
}


// medium text style
TextStyle getMediumStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(color, FontWeightManager.medium, fontSize);
}


// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(color, FontWeightManager.bold, fontSize);
}

// semi-bold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(color, FontWeightManager.semiBold, fontSize);
}