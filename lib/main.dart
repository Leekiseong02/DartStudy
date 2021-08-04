import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var buttonClickNumber = 0;

  var questionNumber = 0;

  var questionList = ['hello', 'hi', '안녕하세요'];

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
            Text(questionList[questionNumber]),
            Text('Hello World!2'),
            RaisedButton(child: Text('Button 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Button 4'), onPressed: questionFunction),
            RaisedButton(
                child: Text('Button 2'),
                onPressed: () => print('Press Button 2')),
            RaisedButton(
                child: Text('Button 3'),
                onPressed: () {
                  //....
                  print('Press Button 3');
                }),
          ],
        ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
