import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questionList = ['What is you name?', 'What is your favourite colour?'];
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionList[questionIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Application"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Question(questionList[questionIndex]),
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
