import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText(
    this.text, {
    Key? key,
    this.size,
    this.color = ColorManager.mainBlack,
    this.overflow = TextOverflow.ellipsis,
    this.fontWeight = FontWeightManger.regular,
  }) : super(key: key);

  final String text;
  final double? size;
  final Color color;
  final TextOverflow overflow;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size ?? FontSize.s20,
        fontWeight: fontWeight,
      ),
      overflow: overflow,
      maxLines: 1,
    );
  }
}
