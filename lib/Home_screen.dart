import 'package:flutter/material.dart';
import 'package:bic_app/main.dart';
import 'package:bic_app/profile_screen.dart';
import 'package:bic_app/liftingplans/cable_machine_screen.dart';
import 'package:bic_app/liftingplans/crossfit_screen.dart';
import 'package:bic_app/liftingplans/calisthenics_screen.dart';
import 'package:bic_app/liftingplans/free_weight_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool _isLoggedIn = false; // Add a flag to track login status

  final List<Widget> _pages = [MainPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //   ],
      // ),
    );
  }
}


class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    const top = 280.00 - 72.00 / 2;

    return Scaffold(
      body: Column(children: [
        SizedBox(height: 20,),
        Padding(padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Home Page", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),),
            ],
          ),
        ),
        SizedBox(
          // decoration: InputDecoration(
          //     hintText: "Search..",
          //     prefixIcon: Icon(Icons.search),
          //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
          // ),
        ),
        SizedBox(height: 30,),
        Text("Whats Available to you", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.blue,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 60,
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => calisthenicsScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Calisthenics",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.green,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 60,
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => free_weightScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Free Weights",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.purple,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 60,
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => crossfitScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Crossfit",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 60,
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => cable_machineScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Cable Machines",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],)),
          ),
        ),
        Text("Top lifts",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
        SizedBox(height: 20,),
        Expanded(child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent),
                      child: Icon(Icons.accessible_forward, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Monday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Free Weights", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("BB Overhead Press", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(

                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent),
                      child: Icon(Icons.accessible_forward, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Monday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Free Weights", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("High Pull", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
                      child: Icon(Icons.nordic_walking, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Wednesday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Calisthenics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("Plank-1 Minute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(

                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
                      child: Icon(Icons.monitor_weight, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Monday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Cable Machine", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("Weighted Dips ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(

                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent),
                      child: Icon(Icons.accessible_forward, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Friday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Free Weights", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("DB Bench Press ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(

                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellowAccent),
                      child: Icon(Icons.nordic_walking, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Wednesday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Calisthenics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("Run 1 mile", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(

                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pinkAccent),
                      child: Icon(Icons.monitor_weight, size: 30,),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Column(children: [
                        Text("Friday", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                        Text("Cable Machine", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text("Katana Extension", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ]),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      // Add your button here
                      // child: TextButton(
                      //   onPressed: () {
                      //     // Add your button click logic here
                      //     // This is where you can define the action when the button is clicked
                      //   },
                      //   child: Text(
                      //     "let's do it",
                      //     style: TextStyle(
                      //         fontSize: 25, fontWeight: FontWeight.w600),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          ),
        ),
        )
      ],
      ),
    );
  }
}

// Widget buildCoverImage() => Container(
//   color: Colors.grey,
//   child: Image.asset(
//     'assets/lifter.jpg',
//     width: double.infinity,
//     height: 280,
//     fit: BoxFit.cover,
//   ),
// );
// Widget buildProfileImage() => CircleAvatar(
//   radius: 72,
//   backgroundColor: Colors.grey.shade800,
//   backgroundImage: AssetImage(
//       'assets/LinfieldLogo.jpg'
//   ),
// );








