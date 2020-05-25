import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({@required this.reps, this.mainText, this.hintText, this.margin});

  final TextEditingController reps;
  final String mainText;
  final String hintText;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            mainText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            textAlign: TextAlign.left,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: reps,
            decoration: InputDecoration(hintText: hintText),
          ),
        ],
      ),
    );
  }
}
