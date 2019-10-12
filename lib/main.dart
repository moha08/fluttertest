import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final questionList = const [
    {
      'questionText': 'What is your favourite color?',
      'answer': [{'text':'Black','score': 10}, {'text': 'Blue','score':8}, {'text': 'Red','score' : 6}]
    },
    {
      'questionText': 'What is your favourite car?',
      'answer': [{'text':'Golf','score': 10}, {'text': 'Edge','score':8}, {'text': 'Lancer','score' : 6}]

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
        body: questionIndex < questionList.length
            ? Quiz(questionAnswer: answerQuestion,questionList: questionList,questionIndex: questionIndex,)
            : Result(),
      ),
    );
  }
}
