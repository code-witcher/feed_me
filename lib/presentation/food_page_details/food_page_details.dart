import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/big_text.dart';
import '../common_widgets/small_text.dart';
import '../homepage/view/details_row.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({Key? key}) : super(key: key);

  static const routeName = '/popular-food-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: AppConstants.popularFoodImg,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSize.s45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const IconContainer(
                        icon: Icons.arrow_back_ios_new,
                      ),
                    ),
                    const IconContainer(
                      icon: Icons.shopping_cart_outlined,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: AppConstants.popularFoodImg - AppSize.s30,
                left: AppSize.s0,
                right: AppSize.s0,
                bottom: AppSize.s0,
                child: Container(
                  padding: EdgeInsets.all(AppPadding.p20),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppSize.s30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BigText('Chinese Side'),
                      SizedBox(
                        height: AppSize.s10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: ColorManager.primary,
                                size: AppSize.s15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: AppSize.s10,
                          ),
                          const SmallText(
                            '4.5',
                          ),
                          SizedBox(
                            width: AppSize.s10,
                          ),
                          const SmallText(
                            '1287 Comments',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppSize.s20,
                      ),
                      const DetailsRow(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size,
    this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? AppSize.s40,
      width: size ?? AppSize.s40,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorManager.iconBackground.withOpacity(0.75),
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.symmetric(horizontal: AppMargin.m20),
      child: Icon(
        icon,
        size: iconSize ?? AppSize.s20,
        color: iconColor ?? ColorManager.iconColor3,
      ),
    );
  }
}
