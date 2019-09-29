import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function answerFun;
  Answer(this.answerFun);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("Answer 1"),
        onPressed: answerFun,
        focusColor: Colors.blue[300],
      ),
    );
  }
}
