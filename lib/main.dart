import "package:flutter/material.dart";
import 'package:my_first_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'questionText': 'Who\'s your friend?',
      'answer': [
        {'text': 'Alex', 'score': 10},
        {'text': 'Chris', 'score': 6},
        {'text': 'Alice', 'score': 4}
      ],
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
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
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
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
