import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  int questionI;
  final Function answerQues;
  Quiz({
    required this.questions,
    required this.questionI,
    required this.answerQues,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionI]['questionText'] as String,
        ),

        /*The following function is a .map() function which basically takes a reference of a list and then
    makes a new list based on that reference. Here we're trying to create a new list of Widgets for the Answer Buttons
    taking 'answer' list as reference   (question[_questionIndex]['answer'])      */

        /*We're doing this, instead of hard coding the Answer() functions to raise buttons(as commented below), since we might want different
    number of Answer buttons(asa widgets) for different questions       */

        /*map() takes a function as an argument and thus we're creating an Anonymous function having 'answer' (current element in the 'answers'
    list) as an argument which we pass to the _AnswerQuestion() function, which basically contains text for answers      */

        /* The '...' below is basically turning the whole newly created list into small elements of that list so as to pass those elements
    in the Column() List since otherwise, we'd pass a list in column list which would create a nested list, which is wrong      */

        ...(questions[questionI]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQues(answer['score']),
              answer['text'] as String); //As string added
        }).toList()
        //Answer(_AnswerQuestion),
        //Answer(_AnswerQuestion),
      ],
    );
  }
}
