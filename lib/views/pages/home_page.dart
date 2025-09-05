import 'package:flutter/material.dart';
import 'package:flutter_demo/data/constants.dart';
import 'package:flutter_demo/views/pages/course_page.dart';
import 'package:flutter_demo/views/widgets/container_widget.dart';
import 'package:flutter_demo/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardList = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            HeroWidget(title: 'Flutter Mapp', nextPage: CoursePage()),
            ...List.generate(cardList.length, (index) {
              return ContainerWidget(
                title: cardList.elementAt(index),
                description: 'This description of this.',
              );
            }),
          ],
        ),
      ),
    );
  }
}
