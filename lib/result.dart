import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore > 22) {
      resultText = "You should try out new things";
    } else if (resultScore >= 20 && resultScore <= 22)
      resultText = "You have interesting tastes.";
    else if (resultScore >= 15 && resultScore < 20)
      resultText = "You have good tastes!";
    else if (resultScore >= 10 && resultScore < 15)
      resultText = "You're pretty cool!";
    else
      resultText = "You\'re too awesome!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
