import 'package:flutter/material.dart';

class CableMachineWednesday extends StatelessWidget {
  const CableMachineWednesday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Leg Extension-3X12',
      'Sissy Squats-3X12',
      'Hack Squats-3X8',
      'Preacher Curl-3X6',
      'Leg Press-3X8',
      'lying Hamstring Curl-3X10',
      'Side Crunchs-3X10',
      'Plank-1 Minute',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday'),
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
