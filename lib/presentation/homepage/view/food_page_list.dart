import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/big_text.dart';
import '../../common_widgets/small_text.dart';
import 'details_row.dart';

class FoodPageList extends StatelessWidget {
  const FoodPageList(this.index, {Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: AppSize.s120,
          height: AppSize.s120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s20),
            image: DecorationImage(
                image: AssetImage('assets/images/food${index + 1}.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Container(
            height: AppSize.s100,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(AppSize.s20),
              ),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  offset: Offset(0, 2),
                  color: ColorManager.shadow,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BigText('Nutritious fruit meal in China'),
                SizedBox(
                  height: AppSize.s10,
                ),
                const SmallText(
                  'With Chinese Characteristic',
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppSize.s10,
                ),
                const DetailsRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
