import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kcal_nutrition_app/Screens/Widgets/1Body.dart';



class getstartedpage extends StatefulWidget {
  const getstartedpage ({Key? key}) : super(key: key);

  @override
  State<getstartedpage> createState() => _getstartedpageState();
}

class _getstartedpageState extends State<getstartedpage> {
  late String name;
  late bool checkValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildBody(context),
    );
  }
}