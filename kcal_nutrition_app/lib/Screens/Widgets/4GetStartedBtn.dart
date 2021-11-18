import 'package:kcal_nutrition_app/Declarations/GetStartedPage.dart';
import 'package:kcal_nutrition_app/GeneralWidgets/GWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:kcal_nutrition_app/Screens/UI/favorites.dart';


Widget buildGetStartedButton(BuildContext context) => Container(
  margin: const EdgeInsets.only(top:30),
  width: (MediaQuery.of(context).size.width) -75,
  height: 60,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: CupertinoColors.systemPink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.00),
      ),
    ),
    child: Text(
      "Get Started",
      style: GoogleFonts.fredokaOne (
        color: Colors.white,
        fontSize: 20.00,
        fontWeight: FontWeight.normal,
        letterSpacing: 2,
      ),
    ),
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => favorites()));
    },
  ),
);
