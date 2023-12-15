import 'package:flutter/material.dart';

class CrossfitMonday extends StatelessWidget {
  const CrossfitMonday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Set 1',
      'Thrusters-10',
      'KettleBell Swings-10',
      'Set 2',
      'Thrusters-8',
      'BB Back Squats-8',
      'KB Swings-8',
      'Set 3',
      'Thrusters-5',
      'BB Back Squats-5',
      'KB Swings-5',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Monday'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.purple[100], // Colored box for abbreviations
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
