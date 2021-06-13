import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  void AnswerQuestion() {
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text('The Question.'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  AnswerQuestion, //No parantheesis on the function to execute it as a function and not get a returned value
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: AnswerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: AnswerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
