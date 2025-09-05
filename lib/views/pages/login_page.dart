import 'package:flutter/material.dart';
import 'package:flutter_demo/views/widget_tree.dart';
import 'package:flutter_demo/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({super.key, required this.title});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPw = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String confirmedPw = '456';

  //trigger when the login page is closeed.
  @override
  void dispose() {
    //removing the controller after the login page is closed
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeroWidget(title: widget.title),
              SizedBox(height: 20.0),
              TextField(
                controller: controllerEmail,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),

              SizedBox(height: 10.0),
              TextField(
                controller: controllerPw,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 20.0),
              FilledButton(
                onPressed: () {
                  onLoginPressed();
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                child: Text(
                  widget.title,
                ), //widget.title becasue stateful widget otherwise just title
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPw == controllerPw.text) {
      //use pushAndRemoveUntil when you want to replave the delete all the
      //pages but want the current page to be swaped out for target page.
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
