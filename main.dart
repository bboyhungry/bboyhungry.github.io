import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // create a pop up window to display the definition of the word
  createAlertDialog(BuildContext context, var data, String myStr) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Definition"),
              content: Text(
                  myStr.toLowerCase() + ": " + data[0][myStr.toLowerCase()]),
              actions: <Widget>[
                MaterialButton(
                    elevation: 5.0,
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Read To Me"),
          backgroundColor: Colors.amber,
        ),
        body: new Container(
            child: new Column(children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Instruction: Double click on a word to see a message",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.center,
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/word.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var newData = json.decode(snapshot.data.toString());

                  print(newData[0]);

                  final testString =
                      ' Hello World, TeXt this is an example text for testing purposes. hello example. Sir123';
                  final textSpans = <TextSpan>[];

                  // use this function to make the text clickable
                  testString.splitMapJoin(
                    RegExp(r'[A-Za-z]+'),
                    onMatch: (m) {
                      final matchStr = m.group(0); // Matching word

                      // if its a match, add it to the text span
                      textSpans.add(TextSpan(
                          recognizer: DoubleTapGestureRecognizer()
                            ..onDoubleTap = () =>
                                createAlertDialog(context, newData, matchStr),
                          text: matchStr,
                          style: TextStyle(color: Colors.black)));
                      return matchStr;
                    },
                    // else it's not a match, still add it to the text span since it's a punctuation
                    onNonMatch: (string) {
                      textSpans.add(TextSpan(
                          text: string, style: TextStyle(color: Colors.black)));
                      return string;
                    },
                  );

                  // return the RichText
                  return RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 30),
                      children: textSpans,
                    ),
                  );
                }),
          ),
        ])));
  }
}
