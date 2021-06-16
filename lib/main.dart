import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  // '_' in dart marks the sclass as private
  var _questionIndex = 0; //Marking private by '_'

  void _AnswerQuestion() {
    //Marking private by '_'
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite hip hop artist?',
      'What\'s your favourtte game?',
      'When the'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Personality Test"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
