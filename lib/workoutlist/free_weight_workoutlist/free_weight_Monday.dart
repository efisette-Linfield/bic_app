import 'package:flutter/material.dart';

class FreeWeightMonday extends StatelessWidget {
  const FreeWeightMonday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Flat Bench Press-3X12',
      'Db Incline Press-3X6 EA',
      'DB Snatch-4X2 EW',
      'KB Swing-4X8',
      'High Pull-3X5',
      'BB Overhead Press-3X12',
      'Wide Pull Up-3X5',
      'BB Shrug-3X8',
      'DB Front Raise-2X6',
      'DB Rear Delt Fly-2X^'
      'Plank-1 Minute',
      'Cobras-2X15',
      'Side Crunch- 2X20'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Monday'),
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
