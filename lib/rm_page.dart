import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rm_card.dart';

class RmPage extends StatelessWidget {
  RmPage(
      {this.calculatedRM,
      this.calculated2RM,
      this.calculated3RM,
      this.calculated4RM,
      this.calculated5RM,
      this.calculated6RM,
      this.calculated7RM,
      this.calculated8RM});

  final int calculatedRM;
  final int calculated2RM;
  final int calculated3RM;
  final int calculated4RM;
  final int calculated5RM;
  final int calculated6RM;
  final int calculated7RM;
  final int calculated8RM;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1RM Calculator'),
      ),
      body: TopNavigationBar(
        calculatedRM: calculatedRM,
        calculated2RM: calculated2RM,
        calculated3RM: calculated3RM,
        calculated4RM: calculated4RM,
        calculated5RM: calculated5RM,
        calculated6RM: calculated6RM,
        calculated7RM: calculated7RM,
        calculated8RM: calculated8RM,
      ),
    );
  }
}

class TopNavigationBar extends StatefulWidget {
  TopNavigationBar(
      {this.calculatedRM,
      this.calculated2RM,
      this.calculated3RM,
      this.calculated4RM,
      this.calculated5RM,
      this.calculated6RM,
      this.calculated7RM,
      this.calculated8RM});

  final int calculatedRM;
  final int calculated2RM;
  final int calculated3RM;
  final int calculated4RM;
  final int calculated5RM;
  final int calculated6RM;
  final int calculated7RM;
  final int calculated8RM;

  @override
  _TopNavigationBarState createState() => _TopNavigationBarState(
        calculatedRM: calculatedRM,
        calculated2RM: calculated2RM,
        calculated3RM: calculated3RM,
        calculated4RM: calculated4RM,
        calculated5RM: calculated5RM,
        calculated6RM: calculated6RM,
        calculated7RM: calculated7RM,
        calculated8RM: calculated8RM,
      );
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  _TopNavigationBarState(
      {this.calculatedRM,
      this.calculated2RM,
      this.calculated3RM,
      this.calculated4RM,
      this.calculated5RM,
      this.calculated6RM,
      this.calculated7RM,
      this.calculated8RM});

  final int calculatedRM;
  final int calculated2RM;
  final int calculated3RM;
  final int calculated4RM;
  final int calculated5RM;
  final int calculated6RM;
  final int calculated7RM;
  final int calculated8RM;

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.dumbbell,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  FontAwesomeIcons.dumbbell,
                  color: Colors.indigo.shade800,
                ),
                title: Text(
                  '  1RM',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.percentage,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  FontAwesomeIcons.percentage,
                  color: Colors.indigo.shade800,
                ),
                title: Text('Percentage'),
              ),
            ],
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            }),
      ),
      body: Container(
          color: Colors.white,
          child: tabIndex == 0
              ? RmScreen(
                  calculatedRM: calculatedRM,
                  calculated2RM: calculated2RM,
                  calculated3RM: calculated3RM,
                  calculated4RM: calculated4RM,
                  calculated5RM: calculated5RM,
                  calculated6RM: calculated6RM,
                  calculated7RM: calculated7RM,
                  calculated8RM: calculated8RM,
                )
              : PercentScreen(
                  calculatedRM: calculatedRM,
                )),
    );
  }
}

class RmScreen extends StatelessWidget {
  RmScreen(
      {this.calculatedRM,
      this.calculated2RM,
      this.calculated3RM,
      this.calculated4RM,
      this.calculated5RM,
      this.calculated6RM,
      this.calculated7RM,
      this.calculated8RM});

  final int calculatedRM;
  final int calculated2RM;
  final int calculated3RM;
  final int calculated4RM;
  final int calculated5RM;
  final int calculated6RM;
  final int calculated7RM;
  final int calculated8RM;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10.0),
            child: Text(
              'Your 1RM:',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 100.0,
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      calculatedRM.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 50.0),
                    ),
                    Text(
                      'kg',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: RmCard(
              text: '2RM',
              weightText: calculated2RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '3RM',
              weightText: calculated3RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '4RM',
              weightText: calculated4RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '5RM',
              weightText: calculated5RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '6RM',
              weightText: calculated6RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '7RM',
              weightText: calculated7RM.toString(),
            ),
          ),
          Expanded(
            child: RmCard(
              text: '8RM',
              weightText: calculated8RM.toString(),
            ),
          ),
        ],
      ),
    );
  }
}

class PercentScreen extends StatelessWidget {
  PercentScreen({this.calculatedRM});
  final List<double> percents = <double>[
    1.2,
    1.15,
    1.1,
    1.05,
    1,
    0.95,
    0.9,
    0.85,
    0.8,
    0.75,
    0.70,
    0.65,
    0.6
  ];
  final List<String> percentName = <String>[
    '120 %',
    '115 %',
    '110 %',
    '105 %',
    '100 %',
    '95 %',
    '90 %',
    '85 %',
    '80 %',
    '75 %',
    '70 %',
    '65 %',
    '60 %'
  ];
  final int calculatedRM;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: percents.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50.0,
              margin: EdgeInsets.only(bottom: 5.0, left: 30.0, right: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${percentName[index]}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${(percents[index] * calculatedRM).round()} kg',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
