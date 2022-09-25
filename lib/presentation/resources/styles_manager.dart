import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(
  String fontFamily,
  double? fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize ?? FontSize.s12,
    fontWeight: fontWeight,
    color: color,
  );
}

// Light style
TextStyle getLightStyle({
  double? fontSize,
  required Color color,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManger.light,
    color,
  );
}

// Regular style
TextStyle getRegularStyle({
  double? fontSize,
  required Color color,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManger.regular,
    color,
  );
}

// Medium style
TextStyle getMediumStyle({
  double? fontSize,
  required Color color,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManger.medium,
    color,
  );
}

// SemiBold style
TextStyle getSemiBoldStyle({
  double? fontSize,
  required Color color,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManger.semiBold,
    color,
  );
}

// Bold style
TextStyle getBoldStyle({
  double? fontSize,
  required Color color,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManger.bold,
    color,
  );
}
