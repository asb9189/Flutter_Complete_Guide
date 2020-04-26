import 'package:flutter/material.dart';
import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = ["What's your favorite color?", "What's your favorite animal?"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App!"),
        ), //AppBar
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Answer 1"), onPressed: () => print("answer 2")),
            RaisedButton(child: Text("Answer 1"), onPressed: () {
              print("answer 3");
            }),
          ]
        ), //Column
      ), //Scaffold
    ); //MaterailApp
  }
}
