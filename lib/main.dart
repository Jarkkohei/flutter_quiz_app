import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 chosen.');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen.'),
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {
                    //...
                    print('Answer 3 chosen.')
                  },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
