import 'package:flutter/material.dart';

class  Result extends StatelessWidget {
  
  final int finalResult;
  
  
  Result(this.finalResult);
  String outputText;

  get finalResultText{
    if (this.finalResult > 10 ){
      outputText = "You need to learn";
    }
    else {
      outputText = "You are passed";
    }
    return outputText;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Text(
                  finalResultText,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green[200],
                  ),
                ),
              );
  }
}