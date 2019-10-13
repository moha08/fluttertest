import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function questionAnswer;
  final int questionIndex;

  Quiz({
    @required this.questionList,
    @required this.questionAnswer,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['questionText']),
        ...(questionList[questionIndex]['answer'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>questionAnswer(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
