import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("Hello World"), // text
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: 60.0,
        ), // sized Boxed
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "About Me",
            style: TextStyle(fontSize: 20),
          ), // text
        ), // align
        SizedBox(
          height: 60.0,
        ), // sized Boxed
        Center(
          child: Text(
              "I am a new grad from UC Santa Cruz class of 2020. I am familiar with mobile app developement and web application. My specialty is backend architecture. I love learning new technology and using them to build something for society."), // text
        ), // center
      ] // list of children widget in a column
          ), // row
    ); // scaffold
  } // end of widget build funcion
=======
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
>>>>>>> 92190803267311c0e10536ad090fc3fab9710089
}
