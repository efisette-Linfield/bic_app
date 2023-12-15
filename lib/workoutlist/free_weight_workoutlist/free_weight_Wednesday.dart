import 'package:bic_app/workoutlist/free_weight_workoutlist/free_weight_Friday.dart';
import 'package:flutter/material.dart';

class FreeWeightWednesday extends StatelessWidget {
  const FreeWeightWednesday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'DB Get Up-3X12',
      'Front Squat-3X12',
      'Underhand DB Bent Over Row-3X8',
      'High Pull-3X6',
      'DB Lateral Step Up-3X8',
      'DB Overhead Press-3X10',
      'Split Squat-3X10',
      'Plank-1 Minute',
      'crunchs- 3X15',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.green[100], // Colored box for abbreviations
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
