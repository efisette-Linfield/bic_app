import 'package:flutter/material.dart';

class CrossfitFriday extends StatelessWidget {
  const CrossfitFriday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Set 1',
      'Thrusters-10',
      'DeadLifts-10',
      'Pullups-10',
      'Box Jumps-20',
      'Back Extensions-20',
      'Set 2',
      'Power Clean-8',
      'Deadlift-8',
      'Push Ups-10',
      'Kettle Bell Swings-10',
      'Sit Up-20',
      'set 3',
      'Push Ups-5',
      'Deadlifts-5',
      'Pull Ups-10',
      'Wall Ball Shots-20',
      'Burpees-10',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Friday'),
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
