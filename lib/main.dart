import 'package:flutter/material.dart';
import 'inputPage.dart';

void main() {
  runApp(RMCalculator());
}

class RMCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Colors.indigo.shade800,
        scaffoldBackgroundColor: Color(0xFFe8eaf6),
        fontFamily: 'Roboto',
      ),
    );
  }
}
