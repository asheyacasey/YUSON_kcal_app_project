import 'package:kcal_nutrition_app/Declarations/GetStartedPage.dart';
import 'package:kcal_nutrition_app/GeneralWidgets/GWidgets.dart';
import 'package:kcal_nutrition_app/Declarations/Images/ImageFiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget buildPageView(BuildContext context) => Container(
  height: MediaQuery.of(context).size.height / 1.90,
  child: Container(
    child: PageView.builder(
      controller: myPageViewController,
      itemCount: 3,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return buildTopViews(context, index);
      },
      onPageChanged: (value) {
        try {
          currentPage.value = value.toDouble();
        } catch (e) {}
      },
    ),
  ),
);

Widget buildTopViews(BuildContext context, int index) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 40.00),
  child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildImage(index),
        heightSpacer(10.00),
        buildTitle(index),
        heightSpacer(15.00),
        buildSubTitle(context, index),
      ],
    ),
  ),
);

Widget buildImage(int index) => Center(
  child: Container(
    width: double.infinity,
    height: 180,
    child: Image.asset(
      getStartedPageImages[index],
      fit: BoxFit.contain,
    ),
  ),
);

Widget buildTitle(int index) => Flexible(
  child: Text(
    heading[index],
    textAlign: TextAlign.center,
    style:  GoogleFonts.fredokaOne (
      fontSize: 25.00,
      fontWeight: FontWeight.w400,
    ),
  ),
);

Widget buildSubTitle(BuildContext context, int index) => Flexible(
  child: Container(
    width: (MediaQuery.of(context).size.width) - 100,
    child: Text(
      subHeading[index],
      textAlign: TextAlign.center,
      style: GoogleFonts.quicksand (
        color: Colors.blueGrey,
        fontSize: 18.00,
        fontWeight: FontWeight.normal,
      ),
    ),
  ),
);