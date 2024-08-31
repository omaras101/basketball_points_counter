import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "$teamApoints",
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 1;
                            });
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          child: Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                      ]),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "$teamBpoints",
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 1;
                            });
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                            // print("$teamBpoints");
                          },
                          child: Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
