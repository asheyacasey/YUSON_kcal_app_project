import 'package:kcal_nutrition_app/Declarations/GetStartedPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:kcal_nutrition_app/Screens/Widgets/4GetStartedBtn.dart';
import 'package:kcal_nutrition_app/Screens/Widgets/2PageView.dart';
import 'package:kcal_nutrition_app/Screens/Widgets/3DotIndicator.dart';


Widget buildBody(BuildContext context) => Container(

  child: SingleChildScrollView(
    child: ConstrainedBox(
      constraints:
      BoxConstraints(minHeight: (MediaQuery.of(context).size.height)),
      child: ValueListenableBuilder<double>(
        valueListenable: currentPage,
        builder: (context, value, _) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
               Container(
                child: Padding(

                  padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                  child: Text( 'kcal',
                      style: GoogleFonts.fredokaOne ( fontSize: 40, color: CupertinoColors.activeGreen, fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none )
                  ),
                ),
              ),

              buildPageView(context),
              buildDotIndicator(),
              buildGetStartedButton(context),

              Container(
                width: 900,
                height:100,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 20,
                      left: 85,
                      child: Text('Already have an account?', textAlign: TextAlign.left,
                        style: GoogleFonts.quicksand ( fontSize: 16, color: Colors.blueGrey, fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none ),
                      )
                    ),
                    Positioned(
                      top: 20,
                      left:280,
                      child: Text( 'Log in', textAlign: TextAlign.left,
                      style: GoogleFonts.quicksand ( fontSize: 16, color: CupertinoColors.systemPink, fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    ),
  ),
);

