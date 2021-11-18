import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_nutrition_app/Screens/UI/viewContainer.dart';



class cardsView extends StatefulWidget {
  const cardsView ({Key? key}) : super(key: key);
  @override
  State< cardsView> createState() => _cardsViewState();


}
class _cardsViewState extends State<cardsView>{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,),
      child: Wrap(
        spacing: 15,
        children: const <Widget>[
          cards(
          name: "Burger  ",
          image: "assets/images/icons/1.png",

          isDone: false,),

          cards(
            name: "Cakes    ",
            image: 'assets/images/icons/2.png',

            isDone: false,),
          cards(
            name: "Pancake",
            image: 'assets/images/icons/3.png',

            isDone: false,),
          cards(
            name: "Hotdog  ",
            image: 'assets/images/icons/4.png',

            isDone: false,),
          cards(
            name: "Tacos    ",
            image: 'assets/images/icons/5.png',

            isDone: false,),
          cards(
            name: "Fries      ",
            image: 'assets/images/icons/6.png',

            isDone: false,),


        ],

      ),
    );
  }
}

class cards extends StatelessWidget{

  final bool isDone;
  final String name;
  final String image;

  const cards({
     Key? key,
    required this.isDone, required this.name, required this.image,
}): super(key:key);
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraint) {
        return InkWell(

          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.0),
            width: constraint.maxWidth / 2 -10,

            decoration: BoxDecoration(
              color: Color(0xfffaecec),
              borderRadius: BorderRadius.circular(13),
            ),

              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    child:
                    Container(
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('$image'),
                            fit: BoxFit.cover),),
                    ),
                  ),
                  Text(' $name', style: GoogleFonts.quicksand(  fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none ),),


                    Container(
                      child: const Icon(
                        Icons.navigate_next_outlined,
                        color: Color(0xffff9d90),
                      ),
                    ),

                ],
              ),

          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => viewContainer()),
            );
          },
        );
      }
    );
  }
}