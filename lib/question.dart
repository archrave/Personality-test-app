import 'package:flutter/material.dart';

class Question extends StatelessWidget {
//final tells dart that this value wouldnt change after the initialisation in the constructor (a good convention)
  final String questionText;
  Question(this.questionText); //Short methods of writing constructor
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
