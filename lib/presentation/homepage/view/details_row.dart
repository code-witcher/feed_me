import 'package:flutter/material.dart';

import '../../common_widgets/icon_text_widget.dart';
import '../../resources/color_manager.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconTextWidget(
          icon: Icons.circle,
          text: 'Normal',
          iconColor: ColorManager.yellow,
        ),
        IconTextWidget(
          icon: Icons.location_on,
          text: '1.7km',
          iconColor: ColorManager.primary,
        ),
        IconTextWidget(
          icon: Icons.watch_later_outlined,
          text: '32min',
          iconColor: ColorManager.iconColor2,
        ),
      ],
    );
  }
}
