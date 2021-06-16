import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple,
        child: Text('Answer 1'),
        onPressed:
            null, //No parantheesis on the function to execute it as a function and not get a returned value
      ),
    );
  }
}
