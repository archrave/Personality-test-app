import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText); //Short methoda of writing constructor
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
