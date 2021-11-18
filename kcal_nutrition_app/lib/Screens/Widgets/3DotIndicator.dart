import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:kcal_nutrition_app/Declarations/GetStartedPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget buildDotIndicator() => SmoothPageIndicator(
  controller: myPageViewController,
  count: 3,
  effect: WormEffect(
      activeDotColor: CupertinoColors.systemPink,
      dotWidth: 10.0,
      dotHeight: 10,
      dotColor: Colors.grey[350]),
);