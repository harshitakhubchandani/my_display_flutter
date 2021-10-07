import 'package:flutter/material.dart';

class SpalshPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SpalshPage({required this.onInitializationComplete});

  @override
  State<StatefulWidget> createState() {
    throw _SpalshPageState();
  }
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Movies',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
