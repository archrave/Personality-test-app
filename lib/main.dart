import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  var questionIndex = 0;
  void AnswerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  AnswerQuestion, //No parantheesis on the function to execute it as a function and not get a returned value
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
