import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final Function resetHandler;

  Result(this.finalResult, this.resetHandler);

  String get finalResultText {
    print(finalResult);
    String outputText;
    if (finalResult > 20) {
      outputText = "You need to learn";
    } else {
      outputText = "You are passed";
    }
    return outputText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            finalResultText,
            style: TextStyle(
              fontSize: 30,
              color: Colors.green[200],
            ),
          ),
          FlatButton(
            child:
            Text("Reset Quiz"),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
