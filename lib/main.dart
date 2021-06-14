import 'package:flutter/material.dart';

import './question.dart';

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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  _AnswerQuestion, //No parantheesis on the function to execute it as a function and not get a returned value
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print("Second Answer Selected");
              },
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Third Answer Selected')),
          ],
        ),
      ),
    );
  }
}
