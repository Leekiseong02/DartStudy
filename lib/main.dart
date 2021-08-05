import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _questionList = const [
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

  var _questionNumber = 0;

  void questionFunction() {
    setState(() => _questionNumber = _questionNumber + 1);
    if (_questionNumber < _questionList.length) {
      print('We have more questions!');
    } else {
      print('We have no question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionNumber < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionFunction: questionFunction,
                questionNumber: _questionNumber,
              )
            : Result(),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
