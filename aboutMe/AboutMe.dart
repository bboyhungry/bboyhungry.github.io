import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "About Me",
              style: TextStyle(fontSize: 50),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: Text("Testing"),
          ),
        ],
      ),
    );
  }
}
