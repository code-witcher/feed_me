import 'package:flutter/material.dart';

class ColorManager {
  static const tintPrimary = {
    50: Color(0xFFb8e9e3),
    100: Color(0xFFace5de),
    200: Color(0xFFa1e1d9),
    300: Color(0xFF95ded5),
    400: Color(0xFF89dad0),
    500: Color(0xFF7bc4bb),
    600: Color(0xFF6eaea6),
    700: Color(0xFF609992),
    800: Color(0xFF52837d),
    900: Color(0xFF456d68),
  };
  static const int primaryInt = 0xFF89DAD0;

  static const Color primary = Color(0xFF89DAD0);
  static const Color textColor = Color(0xFFCCC7C5);
  static const Color primaryWithOpacity70 = Color(0xB389DAD0);

  // static const Color mainColor = Color(0xFFFA7552);
  static const Color iconColor1 = Color(0xFFFFD28D);
  static const Color iconColor2 = Color(0xFFFCAB88);
  static const Color paraColor = Color(0xFF8F837F);
  static const Color buttonBackground = Color(0xFFF7F6F4);
  static const Color signColor = Color(0xFFA9A29F);
  static const Color titleColor = Color(0xFF5C524F);
  static const Color mainBlack = Color(0xFF332D2D);
  static const Color yellow = Color(0xFFFFD379);
  static const Color shadow = Color(0xFFE8E8E8);
  static const Color iconBackground = Color(0xFFFCF4E4);
  static const Color iconColor3 = Color(0xFF756D54);
  // static const Color yellow = Color(0xFFFA7552);

  static const Color darkGrey = Color(0xFF525252);
  static const Color grey = Color(0xFF737477);
  static const Color lightGrey = Color(0xFF9E9E9E);
  static const Color grey1 = Color(0xFF707070);
  static const Color grey2 = Color(0xFF797979);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFe61f34); // red color.

  static const Color trans = Colors.transparent;
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 chars with 100% opacity
    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}
