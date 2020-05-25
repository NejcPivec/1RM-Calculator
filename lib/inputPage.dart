import 'package:flutter/material.dart';
import 'input_card.dart';
import 'calculate_button.dart';
import 'rm_page.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final weight = TextEditingController();
  final reps = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('1RM Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: InputCard(
              reps: weight,
              mainText: 'Weight Lifted',
              hintText: 'Lifted weight in kg',
              margin: EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
            ),
          ),
          Expanded(
            child: InputCard(
              reps: reps,
              mainText: 'Repetisions',
              hintText: 'Performed reps',
              margin: EdgeInsets.only(
                  top: 10.0, bottom: 40.0, left: 10.0, right: 10.0),
            ),
          ),
          Expanded(
            child: CalculateButton(
              weight: weight,
              reps: reps,
              text: 'Calculate',
              onTap: () {
                var myWeight = int.parse(weight.text);
                var myReps = int.parse(reps.text);

                CalculatorBrain calc =
                    CalculatorBrain(weightLifted: myWeight, repsLifted: myReps);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RmPage(
                      calculatedRM: calc.calculateRM(),
                      calculated2RM: calc.calculate2RM(),
                      calculated3RM: calc.calculate3RM(),
                      calculated4RM: calc.calculate4RM(),
                      calculated5RM: calc.calculate5RM(),
                      calculated6RM: calc.calculate6RM(),
                      calculated7RM: calc.calculate7RM(),
                      calculated8RM: calc.calculate8RM(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
