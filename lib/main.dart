import 'package:flutter/material.dart';

/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print("Question Answers!!!");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Application"),
          backgroundColor: Colors.red[200],
        ),
        body: Column(
          children: [
            Text("What is your name"),
            RaisedButton(
              child: Text("Mohammad"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ali"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Mahmoud"),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
