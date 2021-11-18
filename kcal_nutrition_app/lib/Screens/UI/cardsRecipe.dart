import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_nutrition_app/Screens/UI/viewRecipes.dart';

class cardsRecipe extends StatefulWidget {
  const cardsRecipe ({Key? key}) : super(key: key);
  @override
  State<cardsRecipe> createState() => _cardsRecipeState();
}

class  _cardsRecipeState extends State<cardsRecipe>{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,),
      child: Wrap(
        spacing: 15,
        children: const <Widget>[
          cards(
            name: "Fish Steak With Veggie Sauce",
            image: "assets/images/fish.png",
            info: "Boneless with stakes with crispy fried sauce and toppings."),





        ],

      ),
    );
  }
}

class cards extends StatelessWidget{


  final String name;
  final String image;
  final String info;

  const cards({
    Key? key,
    required this.name, required this.image, required this.info,
  }): super(key:key);
  @override
  Widget build(BuildContext context){

    return LayoutBuilder(builder: (context, constraint) {

      return InkWell(

        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0),
          width: constraint.maxWidth / 1 -10,



          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child:
               Container(
                 height: 260,
                 width:340,

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Color(0xfffaeded),
                 ),
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                       top:0,
                       left: 0,
                       child: Container(
                         width: 340,
                         height: 130,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('$image'),
                             fit: BoxFit.fitWidth,
                             colorFilter: ColorFilter.mode(
                               Colors.black12.withOpacity(0.1),
                               BlendMode.darken,
                             )
                           ),
                           color: Colors.green,
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) ),
                         ),
                         child: Stack(
                           children: <Widget>[
                             Positioned(
                               top: 10,
                               left:290,
                               child: Container(
                                 width: 40,
                                 height: 40,
                                 color: Colors.transparent,
                                 child: Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Colors.white,
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                     Positioned(
                       top: 130,
                         left: 0,
                         child: Container(
                          height: 40,
                           width: 120,
                           color: Colors.transparent,
                           child: Stack(
                             children: <Widget>[
                               Positioned(
                                 top:0,
                                   left: 10,
                                   child: Container(
                                    width: 40,
                                     height: 40,
                                     color: Colors.transparent,
                                     child: Icon(
                                       Icons.schedule,
                                       color: Colors.black,
                                       size: 20,
                                     ),
                               ),),
                               Positioned(
                                 top: 0,
                                 left: 50,
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 10.0),
                                   child: Container(
                                     child: Text(
                                       '25 min', style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w800,)
                                     ),
                                   ),
                                 ),
                               )
                             ],
                           ),
                     )),
                     Positioned(
                         top: 130,
                         left: 100,
                         child: Container(
                           height: 40,
                           width: 110,
                           color: Colors.transparent,
                           child: Stack(
                             children: <Widget>[
                               Positioned(
                                 top:0,
                                 left: 0,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.person_outline,
                                     color: Colors.black,
                                     size: 20,
                                   ),
                                 ),),
                               Positioned(
                                 top: 0,
                                 left: 40,
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 10.0),
                                   child: Container(
                                     child: Text(
                                         '1 serve', style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w800,
                                     )
                                     ),
                                   ),
                                 ),
                               )

                             ],
                           ),
                         )),

                     Positioned(
                         top: 130,
                         left: 210,
                         child: Container(
                           height: 40,
                           width: 120,
                           color: Colors.transparent,
                           child: Stack(
                             children: <Widget>[
                               Positioned(
                                 top:0,
                                 left: 0,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.star_rounded,
                                     color:Color(0xffff6363),
                                     size: 20,
                                   ),
                                 ),),
                               Positioned(
                                 top:0,
                                 left: 20,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.star_rounded,
                                     color:Color(0xffff6363),
                                     size: 20,
                                   ),
                                 ),),
                               Positioned(
                                 top:0,
                                 left: 40,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.star_rounded,
                                     color:Color(0xffff6363),
                                     size: 20,
                                   ),
                                 ),),
                               Positioned(
                                 top:0,
                                 left: 60,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.star_rounded,
                                     color:Color(0xffff6363),
                                     size: 20,
                                   ),
                                 ),),
                               Positioned(
                                 top:0,
                                 left: 80,
                                 child: Container(
                                   width: 40,
                                   height: 40,
                                   color: Colors.transparent,
                                   child: Icon(
                                     Icons.star_rounded,
                                     color:Color(0xffff6363),
                                     size: 20,
                                   ),
                                 ),),


                             ],
                           ),
                         )),




                     Positioned(
                         top: 170,
                         left:20,
                         child: Container(
                           height: 30,
                           width: 300,
                           color: Colors.transparent,
                           child: Text('$name', style: GoogleFonts.quicksand(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           )),
                         )),
                     Positioned(
                         top: 200,
                         left:20,
                         child: Container(
                           height: 45,
                           width: 300,
                           color: Colors.transparent,
                           child: Text('$info', style: GoogleFonts.quicksand(
                             fontSize: 13,
                             fontWeight: FontWeight.w500,
                           )),
                         )),
                   ],
                 )
                 ,
               ),
              ),

            ],
          ),

        ),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => viewRecipes()),
          );
        },
      );
    }
    );
  }
}