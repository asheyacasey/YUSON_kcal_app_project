import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class viewContainer extends StatefulWidget {
  const viewContainer({Key? key}) : super(key: key);

  @override
  State<viewContainer> createState() => _viewContainerState();

}

class _viewContainerState extends State<viewContainer>{
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
              onPressed:() {
                Navigator.pop(context);
              },
            ),
            title: Container(
              padding: const EdgeInsets.fromLTRB(110, 20, 20, 20),
              child: Text(
                "Foods", style: GoogleFonts.quicksand
                ( fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          body: Builder(
            builder: (context) {
              return SingleChildScrollView(
                child:
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,

                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 350,
                          height:120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfffff0f0),
                          ),

                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 120,
                                  height: 120,

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/icons/1.png'),
                                        fit: BoxFit.fitWidth),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 30,
                                  left:120,
                                  child: Container(
                                    width: 200,
                                    height: 30,
                                    color: Colors.transparent,
                                    child: Text('Hamburger', style: GoogleFonts.quicksand(  fontSize: 20,
                                        color: Color(0xffd0a482), fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none ),),
                                  )
                              ),
                              Positioned(
                                top: 60,
                                left:120,
                                child: Container(
                                    width: 200,
                                    height: 50,
                                    color: Colors.transparent,
                                    child: Text(
                                      'Alternative Name: Ground Beef Sandwich'
                                      , style: GoogleFonts.quicksand(  fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none ),
                                    )
                                ),

                              )
                            ],
                          ),
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all( 30.0),
                      child: Container(
                        child: Text('A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. '
                            'The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise,'
                            ' relish, or a "special sauce", often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns.'
                            ' A hamburger topped with cheese is called a cheeseburger.',
                            style: GoogleFonts.quicksand(  fontSize: 15, color:   Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,  letterSpacing: 1,  ),
                          textAlign: TextAlign.justify,


                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                     child: Container(
                       width: 360,
                       height:20,
                       color: Colors.transparent,
                       child: Text('Gallery', style: GoogleFonts.quicksand(  fontSize: 16, color:   Color(0xff000000), fontWeight: FontWeight.bold,
                         decoration: TextDecoration.none,  letterSpacing: 1,  )),
                     ),
                   ),
                   Container(
                     width: 360,
                     height:280,
                     color: Colors.transparent,
                     child: Stack(
                       children: <Widget>[

                        Positioned(
                          top: 0,
                          left: 0,
                           child: Container(
                             width: 180,
                             height:280,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/images/burger1.png'),
                                   fit: BoxFit.fitWidth),
                               color: Colors.transparent,
                             ),
                           ),
                         ),
                         Positioned(
                           top: 0,
                           left: 190,
                           child: Container(
                             width: 180,
                             height:280,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/images/burger2.png'),
                                   fit: BoxFit.fitWidth),
                               color: Colors.transparent,
                             ),
                           ),
                         ),
                       ],
                     ),
                   )




                  ],
                ),
              );

            }
          ),




        );
  }
}