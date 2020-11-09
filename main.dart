import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart';
import 'dart:io';
import 'dart:js' as js;
import 'aboutMe/AboutMe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Henry Dang',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        scaffoldBackgroundColor: Colors.grey[400],
      ),
      home: MyHomePage(), // widget for the home page, Stateless widget
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Building a stateless widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Appbar_image.png',
          fit: BoxFit.cover,
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(100),
          children: <Widget>[
            Container(
              height: 50,
              child: Center(
                child: ButtonTheme(
                  minWidth: 200,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutMe()),
                      );
                    },
                    child: Text(
                      "About Me",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: Center(
                child: ButtonTheme(
                  minWidth: 200,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      js.context.callMethod('open', ['assets/Henry.pdf']);
                    },
                    child: Text(
                      "Resume",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: Center(
                child: ButtonTheme(
                  minWidth: 200,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutMe()),
                      );
                    },
                    child: Text(
                      "Experience",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: Center(
                child: ButtonTheme(
                  minWidth: 200,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutMe()),
                      );
                    },
                    child: Text(
                      "Projects",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
