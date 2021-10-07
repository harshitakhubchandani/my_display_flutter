import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'custom_page.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                onChanged: (text) {
                  value = text;
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(

                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xffD9CAB3), width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xffFD6F96), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 30),
              child: Material(
                color: Color(0xffE93B81),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 10.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(CustomPageRoute(
                      child: HomeScreen(value: value),
                    ));
                  },
                  splashColor: Colors.red,
                  highlightColor: Colors.pinkAccent,
                  minWidth: 100.0,
                  height: 52.0,
                  child: Text(
                    'Display',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}