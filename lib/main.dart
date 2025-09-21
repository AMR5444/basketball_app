import 'package:flutter/material.dart';

void main() {
  runApp(PointsConter());
}

class PointsConter extends StatefulWidget {
  @override
  State<PointsConter> createState() => _PointsConterState();
}

class _PointsConterState extends State<PointsConter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one Point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('PointsConter'),
        ),

        body: Column(
          children: [
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$teamAPoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                        print('teamAPoints');
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                        print('teamAPoints');
                      },

                      child: Text(
                        'Add 2 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                        print('teamAPoints');
                      },
                      child: Text(
                        'Add 3 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 370,
                  child: VerticalDivider(thickness: 1, color: Colors.grey),
                ),
                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$teamBPoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                        print('teamBPoints');
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                        print('teamBPoints');
                      },
                      child: Text(
                        'Add 2 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                        print('teamBPoints');
                      },
                      child: Text(
                        'Add 3 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: Size(150, 50),
                backgroundColor: Colors.orange,
              ),

              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
