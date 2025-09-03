import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  const HeroWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20.0),
            child: Image.asset(
              'assets/images/bg.jpg',
              color: Colors.teal,
              colorBlendMode: BlendMode.color,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 40.0,
              letterSpacing: 30.0,
              color: Colors.tealAccent,
            ),
          ),
        ),
      ],
    );
  }
}
