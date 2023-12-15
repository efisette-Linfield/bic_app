import 'package:flutter/material.dart';

class ExercisesRow extends StatelessWidget {
  final String number;
  final String title;
  final String time;
  final bool isActive;
  final VoidCallback onPressed;
  const ExercisesRow({super.key, required this.number, required this.title,
    required this.time, this.isActive = false, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isActive ? Colors.blueGrey.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: isActive ? Colors.grey : Colors.grey,
                borderRadius: BorderRadius.circular(12.5),
              ),
              alignment: Alignment.center,
              child: Text(
                number,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.redAccent.withOpacity(0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),
          ),

          Image.asset(
            "assets/informationicon.png",
            width: 20,
            height: 20,
          )
        ],
        ),
      ),
    );
  }
}
