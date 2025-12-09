import 'package:flutter/material.dart';
import 'package:three_project/screen/home_screen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff1c2135),
      ),
      home: HomeScreen(),
    );
  }
}
