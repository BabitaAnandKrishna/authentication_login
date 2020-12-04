import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
        title: Text("Welcome page"),
      ),
      body:
        Center(
          child: Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
        ),
    );
  }
}

