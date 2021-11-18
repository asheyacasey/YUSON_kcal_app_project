import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'getstartedpage.dart';

  class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key:key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
    _navigatetogetstarted();
  }

  _navigatetogetstarted()async{
    await Future.delayed(Duration(milliseconds: 4000), (){} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const getstartedpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bgscreen.png'),
                    fit: BoxFit.fitWidth
                ),
              ),
            ),
          ),
          Positioned(
            child: Center (
            child: Text( 'kcal',
                style: GoogleFonts.fredokaOne ( fontSize: 50, color: CupertinoColors.white, fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none )
            )
            )
          ),
          Positioned(
              child: Align ( alignment: Alignment.bottomCenter,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text( 'ZUAMICA',
                      style: GoogleFonts.fredokaOne(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromRGBO(229, 229, 229, 1),
                          decoration: TextDecoration.none )
                  )))
          )
        ],
      ),
    );
  }
}