import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({required this.value});
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFDADA),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Text(
            'Hello '+value+', hope you are doing well...have a great day!',
            textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.black,
            shadows: [
              Shadow(
              blurRadius: 10.0,
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
            ),]),
          ),
        ),
        ),
      );
  }
}

