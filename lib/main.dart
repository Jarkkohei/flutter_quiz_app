import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Sheep', 'score': 5},
        {'text': 'Lion', 'score': 1},
        {'text': 'Mouse', 'score': 10},
        {'text': 'Horse', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Baseball', 'score': 5},
        {'text': 'Swimming', 'score': 4},
        {'text': 'Cycling', 'score': 1},
        {'text': 'Running', 'score': 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //_totalScore = _totalScore + score;
    //or
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
