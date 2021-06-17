import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
    final _questions = const [
      // This is a list of maps, each map contains two keys here
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Green', 'Red', 'Purple', 'Blue']
      },
      {
        'questionText': 'What\'s your favourite hip hop artist?',
        'answers': ['Green', 'Red', 'Purple', 'Blue']
      },
      {
        'questionText': 'What\'s your favourite game?',
        'answers': ['Skyrim', 'Minecraft', 'Dark Souls', 'Half Life']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Personality Test"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionI: _questionIndex,
                answerQues: _AnswerQuestion,
              )
            : Result(),
      ),
    );
  }
}
