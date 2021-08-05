import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final questionList = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answerText': ['Red', 'Blue', 'Green', 'Olive'],
    },
    {
      'questionText': 'what\'s your favorite fruit?',
      'answerText': ['Apple', 'Lemon', 'Strawberry', 'Grape'],
    },
    {
      'questionText': 'what\'s your favorite singer?',
      'answerText': ['Girl\'s Generation', 'Girl\'s Day', 'Twice', '10cm'],
    },
  ];
  var buttonClickNumber = 0;

  var questionNumber = 0;

  void questionFunction() {
    setState(() => questionNumber = questionNumber + 1);
    if (questionNumber < questionList.length) {
      print('We have more questions!');
    } else {
      print('We have no question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: questionNumber < questionList.length
            ? Column(
                children: [
                  Question(questionList[questionNumber]['questionText']),
                  ...(questionList[questionNumber]['answerText']
                          as List<String>)
                      .map((answer) {
                    return Answer(questionFunction, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
