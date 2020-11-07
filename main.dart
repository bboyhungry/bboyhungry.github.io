import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henry Dang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text("Welcome to my page!"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(200),
          children: <Widget>[
            Container(
              height: 50,
              child: Center(
                child: ElevatedButton(
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
            SizedBox(height: 20),
            Container(
              height: 50,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutMe()),
                    );
                  },
                  child: Text(
                    "Resume",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              color: Colors.blue[200],
              child: const Center(
                  child: Text(
                "Experience",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              color: Colors.blue[200],
              child: const Center(
                  child: Text(
                "Projects",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
      ),
      body: Center(
        child: Text("About Me"),
      ),
    );
  }
}
