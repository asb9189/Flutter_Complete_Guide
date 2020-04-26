import 'package:flutter/material.dart';

//we rebuilt the stateless widget because the data
//going into its constructor changed.
class Question extends StatelessWidget {

  final String questionText;

  //short hand for constructors
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        questionText, 
        style: new TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
    ));
  }
  
}