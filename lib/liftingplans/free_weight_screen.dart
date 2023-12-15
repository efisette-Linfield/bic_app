import 'package:bic_app/Home_screen.dart';
import 'package:bic_app/workoutlist/free_weight_workoutlist/free_weight_Friday.dart';
import 'package:bic_app/workoutlist/free_weight_workoutlist/free_weight_Monday.dart';
import 'package:bic_app/workoutlist/free_weight_workoutlist/free_weight_Wednesday.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bic_app/profile_screen.dart';
import 'package:bic_app/common_widgets/exercise_row.dart';

class free_weightScreen extends StatefulWidget {
  const free_weightScreen({super.key});

  @override
  State<free_weightScreen> createState() => _free_weightScreenState();
}

class _free_weightScreenState extends State<free_weightScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomeScreen()];
  List trainingDarArr4 = [
    {
      "name": "Training Week 1"
    },
    {
      "name": "Training Week 2"
    },
    {
      "name": "Training Week 3"
    },
    {
      "name": "Training Week 4"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free Weight Page",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            calisthenicsBox(), // Calisthenics Box (Or multiple boxes)
            SizedBox(height: 20),
            carouselSlider(media), // Carousel Slider
          ],
        ),
      ),
    );
  }

  Widget calisthenicsBox() {
    var media = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: media.width ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.directions_walk,
                  size: 60,
                ),
                SizedBox(height: 10),
                Text(
                  "Free Weight",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget carouselSlider(Size media) {
    // Carousel Slider widget
    return SizedBox(
      width: media.width,
      height: media.width * 1.4,
      child: CarouselSlider.builder(
        options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 0.5,
            enlargeCenterPage: true,
            viewportFraction: 0.65,
            enlargeFactor: 0.4,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom
        ),
        itemCount: trainingDarArr4.length,
        itemBuilder: (BuildContext context, index, realIndex) {

          var object1 = trainingDarArr4[index] as Map ?? {};
          return Container(
            margin: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  object1["name"].toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "week ${index + 1}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),
                ),

                ExercisesRow(number: "1", title: "Monday", time: "90 min",
                    isActive: true, onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FreeWeightMonday()),
                      );
                    }),
                ExercisesRow(number: "2", title: "Wednesday", time: "45 min",
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FreeWeightWednesday()),
                      );
                    }),
                ExercisesRow(number: "3", title: "Friday", time: "60 min",
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FreeWeightFriday()),
                      );
                    }),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}

