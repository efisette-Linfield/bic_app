import 'package:flutter/material.dart';

class CalisthenicsFriday extends StatelessWidget {
  const CalisthenicsFriday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Tricep Dip-3X10',
      'Downward Dog-2X10',
      'Pike Push Up-3X5',
      'Sid Plank Arm Extension-3X10',
      'Superman With Arm Extension-3X10',
      'Plank Tap-3X10 EA',
      'Elevated Decline Push Up',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Friday'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue[100], // Colored box for abbreviations
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
