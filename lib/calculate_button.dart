import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton(
      {@required this.weight, @required this.reps, this.text, this.onTap});

  final TextEditingController weight;
  final TextEditingController reps;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 100.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
        color: Colors.indigo.shade800,
      ),
    );
  }
}
