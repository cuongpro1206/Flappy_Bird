import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final birdY;
  final double birdWidth;
  final double birdHeihgt;

  MyBird(
      {
        this.birdY,
        required this.birdWidth,
        required this.birdHeihgt,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0,birdY),
        child:
        Image.asset(
            'assets/images/Bird.png',
          width: MediaQuery.of(context).size.width * birdWidth / 2,
          height: MediaQuery.of(context).size.height * 3 / 4 * birdHeihgt / 2,
          fit: BoxFit.fill,
        ),
    );
  }
}
