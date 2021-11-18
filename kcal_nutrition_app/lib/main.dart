// @dart=2.9
import 'package:flutter/material.dart';
import 'Screens/UI/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}