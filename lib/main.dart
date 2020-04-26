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
  int _totalScore = 0;

  final _questions = [
      
      //These are just maps
      {"questionText": "What's you're favorite color?", 
        "answers": [
          {"text" : "Black", "score" : 10},
          {"text" : "Red", "score" : 5},
          {"text" : "Green", "score" : 3},
          {"text" : "White", "score" : 1}
      ]},

      {"questionText": "What's you're favorite animal?", 
        "answers": [
          {"text" : "Rabbit", "score" : 3},
          {"text" : "Snake", "score" : 11},
          {"text" : "Elaphant", "score" : 5},
          {"text" : "Lion", "score" : 9}
      ]},

      {"questionText": "What's you're favorite instructor?", 
        "answers": [
        {"text" : "Max", "score" : 1},
        {"text" : "Max", "score" : 1},
        {"text" : "Max", "score" : 1},
        {"text" : "Max", "score" : 1}
      ]}

    ];

  void _answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }

  }

  void _resetQuiz() {

    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
    
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
        : Result(_totalScore, _resetQuiz)), 
    ); 
  }
}
