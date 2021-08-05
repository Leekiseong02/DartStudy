import 'package:flutter/material.dart';
import 'package:flutter_perfect_guide/question.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function questionFunction;
  int questionNumber;
  Quiz({
    @required this.questionList,
    @required this.questionFunction,
    @required this.questionNumber,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionNumber]['questionText']),
        ...(questionList[questionNumber]['answerText'] as List<String>)
            .map((answer) {
          return Answer(questionFunction, answer);
        }).toList()
      ],
    );
  }
}
