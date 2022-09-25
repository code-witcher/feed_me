import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/big_text.dart';
import '../../common_widgets/small_text.dart';
import 'food_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
                margin: EdgeInsets.only(
                  top: AppMargin.m45,
                  bottom: AppMargin.m15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const BigText(
                          'Saudi Arabia',
                          color: ColorManager.primary,
                        ),
                        Row(
                          children: const [
                            SmallText('Riyadh'),
                            Icon(Icons.arrow_drop_down_rounded),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: AppSize.s45,
                      width: AppSize.s45,
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.search,
                        color: ColorManager.white,
                        size: AppSize.s24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
