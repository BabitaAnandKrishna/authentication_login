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
        // backgroundColor: Colors.teal,
        title: Text("Welcome page"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        physics: NeverScrollableScrollPhysics(),//BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 600,
            width: 400,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Page1",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Container(
              height: 600,
              width: 400,
              color: Colors.green,
              child: Center(
                child: Text(
                  "Page2",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Container(
              height: 600,
              width: 400,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Page3",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Container(
              height: 600,
              width: 400,
              color: Colors.pink,
              child: Center(
                child: Text(
                  "Page4",
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ],
      ),
      // Center(
      //   child: Container(
      //     height: 300,
      //     width: 200,
      //     decoration: BoxDecoration(
      //       color: Colors.green
      //     ),
      //   ),
      // ),
    );
  }
}
