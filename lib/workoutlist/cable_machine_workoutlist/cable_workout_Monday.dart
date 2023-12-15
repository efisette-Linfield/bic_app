import 'package:flutter/material.dart';

class CableMachineMonday extends StatelessWidget {
  const CableMachineMonday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Cable Fly-3X12',
      'Single Arm Cable Lat Bias Row-3X8',
      'Cable Iron Cross-3X10',
      'Upper Back Bias Pulldown-3X12',
      'Weighted Dips-3X8',
      'T-Bar Rows-3X10',
      'Rear Delt Row-3X12',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Monday'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.red[100], // Colored box for abbreviations
            child: Text(
              'Abbreviations: EA=Each Arm, EL=Each Leg, EW= Each Way, BB=Barbell, DB=DumbBell',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      exercises[index],
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
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
