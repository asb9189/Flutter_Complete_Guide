import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() {
  //pass main widget to be run
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  int _questionIndex = 0;

  final _questions = [
      
      //These are just maps
      {"questionText": "What's you're favorite color?", "answers": [
        "Black", "Red", "Green", "White"]},

      {"questionText": "What's you're favorite animal?", "answers": [
        "Rabbit", "Snake", "Elaphant", "Lion"]},

      {"questionText": "What's you're favorite instructor?", "answers": [
        "Max", "Max", "Max", "Max"]}
    ];

  void _answerQuestion() {

    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App!"),
        ), //AppBar
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
        : Result()), 
    ); 
  }
}
