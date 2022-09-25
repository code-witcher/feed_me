import 'package:dots_indicator/dots_indicator.dart';
import 'package:feed_me/presentation/food_page_details/food_page_details.dart';
import 'package:feed_me/presentation/resources/color_manager.dart';
import 'package:feed_me/presentation/resources/dimensions.dart';
import 'package:feed_me/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/big_text.dart';
import '../../common_widgets/small_text.dart';
import '../viewmodel/food_page_viewmodel.dart';
import 'details_row.dart';
import 'food_page_list.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  final pageController = PageController(
    // initialPage: 1,
    viewportFraction: AppSize.s0_85,
  );

  final viewModel = FoodPageViewModel();

  late double currPageValue = 0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(PopularFoodPage.routeName);
          },
          child: Container(
            height: Dimensions.pageView,
            // color: Colors.red,
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (ctx, i) => PageViewItem(
                i,
                currPageValue,
                viewModel.currentIndex.value,
              ),
              controller: pageController,
              onPageChanged: (i) {
                setState(() {
                  viewModel.currentIndex.value = i;
                });
              },
              // pageSnapping: false,
            ),
          ),
        ),
        Obx(() {
          return DotsIndicator(
            dotsCount: 5,
            position: viewModel.currentIndex.value.toDouble(),
            decorator: DotsDecorator(
              size: Size.square(AppSize.s9),
              activeSize: Size(AppSize.s18, AppSize.s9),
              activeShape: StadiumBorder(),
            ),
          );
        }),
        SizedBox(
          height: AppSize.s30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppMargin.m20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText('Popular'),
              Container(
                margin: EdgeInsets.only(
                  bottom: AppMargin.m3,
                  left: AppMargin.m10,
                  right: AppMargin.m10,
                ),
                child: const BigText('.', color: ColorManager.lightGrey),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: AppMargin.m3),
                child: const SmallText('Food Panning'),
              )
            ],
          ),
        ),
        SizedBox(
          height: AppSize.s20,
        ),
        ListView.builder(
          itemCount: 9,
          itemBuilder: (ctx, i) => Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppMargin.m20,
              vertical: AppPadding.p8,
            ),
            child: FoodPageList(i),
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ],
    );
  }
}

/// Separate Widget can be transferred to another file.
class PageViewItem extends StatelessWidget {
  const PageViewItem(this.index, this.pageValue, this.currentIndex, {Key? key})
      : super(key: key);
  final int index;
  final int currentIndex;
  final double pageValue;

  @override
  Widget build(BuildContext context) {
    print(844 / 16);
    Matrix4 matrix = Matrix4.identity();
    const scaleFactor = 0.8;
    final height = Dimensions.pageViewContainer;
    double currentScale = 0;

    if (index == pageValue.floor()) {
      currentScale = 1 - (pageValue - index) * (1 - scaleFactor);
    } else if (index == pageValue.floor() + 1) {
      currentScale = scaleFactor + (pageValue - index + 1) * (1 - scaleFactor);
    } else if (index == pageValue.floor() - 1) {
      currentScale = 1 - (pageValue - index) * (1 - scaleFactor);
    } else {
      currentScale = scaleFactor;
    }

    double trans = height * (1 - currentScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currentScale, 1)
      ..setTranslationRaw(0, trans, 0);

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: height,
            margin: EdgeInsets.symmetric(horizontal: AppMargin.m10),
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(AppSize.s30),
              image: DecorationImage(
                image: AssetImage('assets/images/food${index + 1}.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.all(AppMargin.m30),
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(AppSize.s20),
                boxShadow: const [
                  BoxShadow(
                    color: ColorManager.shadow,
                    offset: Offset(0, AppConstants.shadowOffset),
                    blurRadius: AppConstants.shadowOffset,
                  ),
                  BoxShadow(
                    color: ColorManager.white,
                    offset: Offset(-AppConstants.shadowOffset, 0),
                  ),
                  BoxShadow(
                    color: ColorManager.white,
                    offset: Offset(AppConstants.shadowOffset, 0),
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                top: AppPadding.p15,
                left: AppPadding.p15,
                right: AppPadding.p15,
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
    );
  }
}
