import 'package:flutter/material.dart';
import 'package:flutter_demo/views/widgets/container_widget.dart';
import 'package:flutter_demo/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Mapp'),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'This description of this.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'This description of this.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'This description of this.',
            ),
          ],
        ),
      ),
    );
  }
}
