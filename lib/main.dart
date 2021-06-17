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
  // '_' in dart marks the class as private
  var _questionIndex = 0; //Marking private by '_'
  var _totalScore = 0;
  void _AnswerQuestion(int score) {
    //Marking private by '_'
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
      print("Score: $_totalScore");
      print(_questionIndex);
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      // This is a list of maps, each map contains two keys here
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': [
          {'text': 'Green', 'score': 4},
          {'text': 'Red', 'score': 7},
          {'text': 'Purple', 'score': 3},
          {'text': 'Blue', 'score': 2},
        ]
      },
      {
        'questionText': 'What\'s your favourite hip hop artist?',
        'answers': [
          {'text': 'Kanye West', 'score': 4},
          {'text': 'XXXTentacion', 'score': 7},
          {'text': 'Kenrick Lamar', 'score': 2},
          {'text': 'Eminem', 'score': 9},
        ]
      },
      {
        'questionText': 'What\'s your favourite game?',
        'answers': [
          {'text': 'Skyrim', 'score': 1},
          {'text': 'Minecraft', 'score': 8},
          {'text': 'Dark Souls', 'score': 7},
          {'text': 'Half Life', 'score': 3},
        ]
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
