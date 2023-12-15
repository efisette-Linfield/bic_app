import 'package:flutter/material.dart';

class CrossfitWednesday extends StatelessWidget {
  const CrossfitWednesday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> exercises = [
      'Set 1',
      'Db Clean And Press-10',
      'Bench Press-10',
      'Pendley Rows-10',
      'Jump-Rope Double Under-50',
      'Set 2',
      'DB Clean And Press-8',
      'Bench Press-8',
      'Pendley Rows-8',
      'Box Jumps -20',
      'set 3',
      'DB Cleaan And Press-5',
      'Bench Press-5',
      'Pendley Rows-5',
      'Sit Ups -20',

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday'),
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
