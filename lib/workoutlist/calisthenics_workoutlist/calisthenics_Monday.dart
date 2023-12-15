import 'package:flutter/material.dart';

class CalisthenicsMonday extends StatelessWidget {
  const CalisthenicsMonday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Push Ups-2X10',
      '90 Degree Hold-1X15 Seconds',
      'Push Up Circles-2X8 EW',
      'Archer Push Ups-1X5 EA',
      'Archer Push Ups-1X5 EW',
      'Explosive Negative Push Ups-2X8',
      'Incline Diamond PushUps-2X10',
      'Elevated Decline Puch Up-2X15',
      'Push Up-15 Seconds Down/15 Seconds Up'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Monday'),
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
