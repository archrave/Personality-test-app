import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  // '_' in dart marks the sclass as private
  var _questionIndex = 0; //Marking private by '_'

  void _AnswerQuestion() {
    //Marking private by '_'
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      // This is a list of maps, each map contains two keys here
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Green', 'Red', 'Purple', 'Blue']
      },
      {
        'questionText': 'What\'s your favourite hip hop artist?',
        'answers': ['Green', 'Red', 'Purple', 'Blue']
      },
      {
        'questionText': 'What\'s your favourite game?',
        'answers': ['Skyrim', 'Minecraft', 'Dark Souls', 'Half Life']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Personality Test"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),

                  /*The following function is a .map() function which basically takes a reference of a list and then
            makes a new list based on that reference. Here we're trying to create a new list of Widgets for the Answer Buttons
            taking 'answer' list as reference   (question[_questionIndex]['answer'])      */

                  /*We're doing this, instead of hard coding the Answer() functions to raise buttons(as commented below), since we might want different
            number of Answer buttons(asa widgets) for different questions       */

                  /*map() takes a function as an argument and thus we're creating an Anonymous function having 'answer' (current element in the 'answers'
            list) as an argument which we pass to the _AnswerQuestion() function, which basically contains text for answers      */

                  /* The '...' below is basically turning the whole newly created list into small elements of that list so as to pass those elements
             in the Column() List since otherwise, we'd pass a list in column list which would create a nested list which is wrong      */

                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_AnswerQuestion, answer);
                  }).toList()
                  //Answer(_AnswerQuestion),
                  //Answer(_AnswerQuestion),
                ],
              )
            : Center(child: Text("You did it!")),
      ),
    );
  }
}
