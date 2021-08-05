import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var buttonClickNumber = 0;

  var questionNumber = 0;

  var questionList = [
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

  void answerQuestion() {
    buttonClickNumber++;
    print(buttonClickNumber);
  }

  void questionFunction() {
    setState(() {
      questionNumber++;
      if (questionNumber == 3) questionNumber = 0;
    });
    print(questionList[questionNumber]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Question(questionList[questionNumber]),
            Answer(questionFunction),
            Answer(questionFunction),
            Answer(questionFunction),
          ],
        ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
