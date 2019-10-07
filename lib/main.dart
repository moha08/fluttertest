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
  var questionList = [
    {
      'questionText': 'What is your favourite color?',
      'answer': ['Black', 'Blue', 'Red']
    },
    {
      'questionText': 'What is your favourite car?',
      'answer': ['Golf', 'Edge', 'Lancer']
    },
  ];
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
            Question(questionList[questionIndex]['questionText']),
            ...(questionList[questionIndex]['answer'] as List<String>).map((answer){
              return Answer(answerQuestion, answer);

            }).toList()
          ],
        ),
      ),
    );
  }
}
