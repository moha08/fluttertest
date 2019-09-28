import 'package:flutter/material.dart';

/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("My First Application"),
          backgroundColor: Colors.red[200],
        ),
        body: Center( child : Text("This is my first application in flutter"),
        ),
      )
    );
  }
}