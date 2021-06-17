import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore > 24) {
      resultText = "You should try out new things";
    } else if (resultScore >= 24 && resultScore <= 16)
      resultText = "You have interesting tastes.";
    else if (resultScore >= 16 && resultScore < 24)
      resultText = "You have good tastes!";
    else if (resultScore > 8 && resultScore < 16)
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
            textColor: Colors.purple,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
