import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText(
    this.text, {
    Key? key,
    this.size,
    this.color = ColorManager.lightGrey,
    this.fontWeight = FontWeightManger.regular,
    this.overflow,
  }) : super(key: key);

  final String text;
  final double? size;
  final Color color;
  final TextOverflow? overflow;

  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: 1.2,
        color: color,
        fontSize: size ?? FontSize.s12,
        fontWeight: fontWeight,
        overflow: overflow,
      ),
    );
  }
}
