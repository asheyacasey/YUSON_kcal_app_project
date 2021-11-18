import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class viewRecipes extends StatefulWidget{
  const viewRecipes ({Key? key}) : super(key: key);
  @override
  State< viewRecipes> createState() => _viewRecipesState();
}

class _viewRecipesState extends State< viewRecipes>{
  @override
  Widget build(BuildContext context){
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
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      height:150,
                      decoration: BoxDecoration(
                        color: Color(0xffff1010),
                          image: DecorationImage(
                              image: AssetImage('assets/images/fish.png'),
                              fit: BoxFit.fitWidth,

                          ),

                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 350,
                      height: 40,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffddbdb),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
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
                                            child: Icon(Icons.schedule,
                                              color: Colors.black,
                                              size: 20,),
                                        ),
                                    ),
                                      Positioned(
                                        top: 0,
                                        left: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10.0),
                                          child: Container(
                                            child: Text(
                                                '25 min', style: GoogleFonts.quicksand(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                            )
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                ),

                              ),

                          ),
                          Positioned(
                              top: 0,
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
                            top: 0,
                            left: 220,
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
                            ),
                          ),
                        ],
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 20),
                    child: Container(
                      width: 350,
                      height: 40,
                      color: Colors.transparent,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top:0,
                            left:0,
                            child: Container(
                              padding:  const EdgeInsets.only(top:8.0),
                              color: Colors.transparent,
                              child: Text('Choco Lamb Veggies',
                                  style: GoogleFonts.quicksand(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ) ),
                            ),
                          ),
                          Positioned(
                            top:0,
                            left:290,
                            child: Container(
                              decoration: BoxDecoration(
                                color:  Color(0xffd0f6d7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              width: 50,
                              height: 40,

                              child: Icon(
                                Icons.favorite_outline_rounded,
                                color: Color(0xff66c773),
                                size: 30,
                              ),
                            )
                          ),


                        ],
                      )
                    ),
                  ),





                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10, bottom: 20),
                    child: Container(
                      child: Text('Chocolate is an essential part of any Valentine’s meal,'
                          ' so why not surprise your dinner companion by using it in this savory dish? '
                          'A roasted lamb rack is perfect for two, and the chocolate enriches the pan juices, '
                          'making the perfect sauce to accompany it.',
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
                      child: Text('Ingredients', style: GoogleFonts.quicksand(  fontSize: 16, color:   Color(0xff000000), fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,  letterSpacing: 1,  )),
                    ),
                  ),


                  Container(
                    width: 360,
                    height:170,
                    color: Colors.transparent,
                    child: SizedBox(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryCard(
                            title: "Fish",
                            image: 'assets/images/cards/a.png',
                            text: "250 gm",
                            onTap: () {},
                            selected: false,
                          ),
                          CategoryCard(
                            title: "Lemon",
                            image: 'assets/images/cards/b.png',
                            text: "3 tbsp",
                            onTap: () {},
                            selected: false,
                          ),
                          CategoryCard(
                            title: "Cabbage",
                            image: 'assets/images/cards/c.png',
                            text: "50 gm",
                            onTap: () {},
                            selected: false,
                          ),
                          CategoryCard(
                            title: "Chili",
                            image: 'assets/images/cards/d.png',
                            text: "5 gm",
                            onTap: () {},
                            selected: false,
                          ),
                          CategoryCard(
                            title: "Sauce",
                            image: 'assets/images/cards/e.png',
                            text: "250 gm",
                            onTap: () {},
                            selected: false,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Container(
                      width: 360,
                      height:20,
                      color: Colors.transparent,
                      child: Text('Directions', style: GoogleFonts.quicksand(  fontSize: 16, color:   Color(0xff000000), fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,  letterSpacing: 1,  )),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 350,

                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 80,

                          child: Text(
                            'Step 1: In a stainless steel or glass bowl, combine garlic, olive oil, basil, salt, pepper, lemon juice, and parsley',
                            style: GoogleFonts.quicksand( fontSize: 15, color:  Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,  letterSpacing: 1,  )
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 80,

                          child: Text(
                              'Step 2: In a stainless steel or glass bowl, combine garlic, olive oil, basil, salt, pepper, lemon juice, and parsley',
                              style: GoogleFonts.quicksand( fontSize: 15, color:   Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,  letterSpacing: 1,  )
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 80,

                          child: Text(
                              'Step 3: In a stainless steel or glass bowl, combine garlic, olive oil, basil, salt, pepper, lemon juice, and parsley',
                              style: GoogleFonts.quicksand( fontSize: 15, color:   Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,  letterSpacing: 1,  )
                          ),
                        )
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

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final String text;
  final Function() onTap;
  final bool selected;
  const CategoryCard(
      { required this.title,
        required this.image,
        required this.text,
        required this.onTap,
        this.selected = false,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                  border: Border.all(
                      width: selected ? 2 : 0, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                      fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: GoogleFonts.quicksand( fontSize: 13, color:   Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,  letterSpacing: 1,  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: GoogleFonts.quicksand( fontSize: 12, color:   Color(0xff7b7b7b), fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,  letterSpacing: 1,  ),
            )

          ],
        ),
      ),
    );
  }
}
