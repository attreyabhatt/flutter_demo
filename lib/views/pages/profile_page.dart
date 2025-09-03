import 'package:flutter/material.dart';
import 'package:flutter_demo/data/notifiers.dart';
import 'package:flutter_demo/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
