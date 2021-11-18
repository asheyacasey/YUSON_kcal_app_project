import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kcal_nutrition_app/Screens/UI/navCamera.dart';
import 'package:kcal_nutrition_app/Screens/UI/navFavePage.dart';
import 'package:kcal_nutrition_app/Screens/UI/navHomePage.dart';
import 'package:kcal_nutrition_app/Screens/UI/navProfilePage.dart';
import 'package:kcal_nutrition_app/Screens/UI/navSearchPage.dart';



class favorites extends StatefulWidget {
  const favorites ({Key? key}) : super(key: key);

  @override
  State<favorites> createState() => _favoriteState();
}

class _favoriteState extends State<favorites> {
  int _selectedIndex = 3;

  final List<Widget> _children = [
    navHomePage(),
    navSearchPage(),
    navCamera(),
    navFavePage(),
    navProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_selectedIndex],
      bottomNavigationBar: Container (
        child:  BottomAppBar (
          elevation: 0,
          child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBottomBar(
                      text: "",
                      icon: Icons.home_rounded,
                      selected: _selectedIndex == 0,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });

                      },),
                    IconBottomBar(
                        text: "Search",
                        icon: Icons.search,
                        selected: _selectedIndex == 1,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });

                        }),
                    IconBottomBar2(
                        text: "Home",
                        icon: Icons.camera_alt_outlined,
                        selected: _selectedIndex == 2,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        }),
                    IconBottomBar(
                        text: "Cart",
                        icon: Icons.favorite_rounded,
                        selected:  _selectedIndex == 3,
                        onPressed: () {
                          setState((){
                            _selectedIndex = 3;
                          });

                        }),
                    IconBottomBar(
                        text: "Calendar",
                        icon: Icons.person,
                        selected: _selectedIndex == 4,
                        onPressed: () {
                          setState((){
                            _selectedIndex = 4;
                          });
                        }),
                  ],
                ),
              )
          ),

        ),
      )


    );
  }
}


class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xffff6363);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 30,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = const Color(0xff56c264);


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
