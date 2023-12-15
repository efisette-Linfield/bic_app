import 'package:flutter/material.dart';

class CalisthenicsWednesday extends StatelessWidget {
  const CalisthenicsWednesday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Run-1 Mile',
      'Mountain Climbers-3X20 EL',
      'Multi-Planar(45/lateral/45/curtsy)-4X1 EW',
      'Dead Bug-3X10 EL',
      'Noardic Ham Curl-4X4',
      '3 Way Calf-Raise-3X8 EW',
      'Plank- 1 Minute',
      'Side Plank Prog- 30 Seconds EW',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday'),
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
