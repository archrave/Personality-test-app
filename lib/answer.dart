import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //same as final Function selectHandler to store function pointer
  final String answerText; //for getting answer text
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed:
            selectHandler, //No parantheesis on the function to execute it as a function and not get a returned value
      ),
    );
  }
}
