import 'package:flutter/material.dart';

class CableMachineFriday extends StatelessWidget {
  const CableMachineFriday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Unilateral Crossbody Extension-3X10',
      'Face Away Cable Curl-3X10',
      'Unilateral Crossbody Tricep Extension-3X6',
      'Cross Cable Push Down-3X8',
      'Katana Extension-3X8',
      'Cable Y Extension-3X8',
      'Cable Lateral Raise-3X8',
      'Russian Twist-2X25 EW',
      'V Ups- 2X20'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Friday'),
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
