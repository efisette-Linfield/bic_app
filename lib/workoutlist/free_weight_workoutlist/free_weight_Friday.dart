import 'package:flutter/material.dart';

class FreeWeightFriday extends StatelessWidget {
  const FreeWeightFriday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'DB Preacher Curl-3X6',
      'DB Hammer Curl-3X12',
      'DB Flat Benchpress-3X8',
      'Landmine Press-4X3 EW',
      'Tricep Extension-3X10',
      'DB Overhead Extension-3X8',
      'Plank-1 Minute',
      'Sit Up-2X25',
      'Side Crunch- 2X20'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Friday'),
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
