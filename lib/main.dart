import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Hello World!1'),
            Text('Hello World!2'),
            RaisedButton(child: Text('Button 1'), onPressed: null),
            RaisedButton(child: Text('Button 2'), onPressed: null),
            RaisedButton(child: Text('Button 3'), onPressed: null),
          ],
        ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
