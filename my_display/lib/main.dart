import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';



void main() => runApp(MyDisplay());

class MyDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}