import 'package:bordered_text/bordered_text.dart';
import 'package:flappy_bird/homepage.dart';
import 'package:flutter/material.dart';

class GetStart extends StatefulWidget {
  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 0),
                alignment: Alignment(0, 0),
                color: Colors.blue,
                child: Image.asset(
                  'assets/images/Bird.png',
                  width: 70,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 0),
                alignment: Alignment(0, -0.5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BorderedText(
                        strokeWidth: 15.0,
                        child: Text("FLAPPY",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            )),
                      ),
                      BorderedText(
                        strokeWidth: 15.0,
                        child: Text(
                          "BIRD",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                      ),
                    ]),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 0),
                alignment: Alignment(0, 0.9),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white60,
                              side: BorderSide(
                                width: 4,
                                color: Colors.black38,
                              ),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Icon(
                            Icons.play_arrow_sharp,
                            color: Colors.green.shade800,
                            size: 45,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white60,
                              side: BorderSide(
                                width: 4,
                                color: Colors.black38,
                              ),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Icon(Icons.leaderboard,
                              color: Colors.redAccent, size: 35),
                          onPressed: () {},
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
        Container(
          height: 30,
          color: Colors.green.shade700,
        ),
        Expanded(
            child: Container(
          color: Colors.brown,

        )),
      ],
    ));
  }
}
