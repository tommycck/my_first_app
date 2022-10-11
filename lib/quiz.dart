import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        // add the value to the list
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(
              () => answerQuestion(int.parse(ans['score'].toString())),
              ans['text'].toString());
        }).toList()
      ],
    );
  }
}
