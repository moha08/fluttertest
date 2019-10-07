import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function answerFun;
  final String answerText;

  Answer(this.answerFun,this.answerText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answerText),
        onPressed: answerFun,
        focusColor: Colors.blue[300],
        color: Colors.blue,
      ),
    );
  }
}
