import 'package:flutter/material.dart';

import 'dimensions.dart';

class FontConstants {
  static const fontFamily = 'Roboto';
}

class FontWeightManger {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const black = FontWeight.w900;
}

class FontSize {
  static final double s12 = Dimensions.screenHeight / 70.3;
  static final double s14 = Dimensions.screenHeight / 60.29;
  static final double s16 = Dimensions.screenHeight / 52.75;
  static const double s17 = 17.0;
  static final double s18 = Dimensions.screenHeight / 46.89;
  static final double s20 = Dimensions.screenHeight / 42.2;
  static const double s22 = 22.0;
}
