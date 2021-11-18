import 'package:flutter/material.dart';

PageController myPageViewController = new PageController(viewportFraction: 0.8);
final ValueNotifier<double> currentPage = ValueNotifier<double>(0.0);

List heading = <String>
[
  "Eat Healthy",
  "Healthy Recipes",
  "Track Your Health",
];

List subHeading = <String>
[
  "Maintaining good health should be the primary focus of everyone",
  "Browse thousands of healthy recipes from all over the world.",
  "With amazing inbuilt tools you can track your progress.",
];