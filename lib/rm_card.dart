import 'package:flutter/material.dart';

class RmCard extends StatelessWidget {
  const RmCard({this.text, this.weightText});

  final String text;
  final String weightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(weightText + ' kg',
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
