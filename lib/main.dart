import 'package:feed_me/presentation/food_page_details/food_page_details.dart';
import 'package:feed_me/presentation/homepage/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './presentation/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: kAppTheme,
      home: const HomePage(),
      routes: {
        PopularFoodPage.routeName: (ctx) => const PopularFoodPage(),
      },
    );
  }
}
