import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<navHomePage>{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center
        (
        child:



        Container(
          height: 400,
          width: 300,
          child: Column(
           children: [
             Container(
               height:50,
               width: 200,

               child: Center(
                 child: Text('Home', style: GoogleFonts.quicksand(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   color:   Color(0xff7b7b7b),

                 )),
               ),
             ),
             Container(
             height:150,
             width: 200,

               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/images/eggplant.png'),
                   fit: BoxFit.fitWidth,
                 ),

               ),
           ),
             Container(
               height:50,
               width: 200,
               child: Center(
                 child: Text('Under Maintenance', style: GoogleFonts.quicksand(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                     color:   Color(0xff7b7b7b),
                 )),
               ),
             ),



           ]
        ),
        ),
      )
    );
  }
}