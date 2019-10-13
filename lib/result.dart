import 'package:flutter/material.dart';

class  Result extends StatelessWidget {
  
  final int finalResult;
  
  
  Result(this.finalResult);
    

  String get finalResultText{
    String outputText;
    if (this.finalResult > 20 ){
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