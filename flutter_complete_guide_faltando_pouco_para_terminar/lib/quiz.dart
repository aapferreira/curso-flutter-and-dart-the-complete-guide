import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        //questions.elementAt(0),
        //questions[0],
        questions[questionIndex]['questionText'],
      ),
      // Answer(_answerQuestion),
      // Answer(_answerQuestion),
      // Answer(_answerQuestion),
      // '...' é chamado spread opertator = quebra uma lista em valores individuais
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(() => answerQuestion(answer['score']), answers['text']);
      }).toList()
    ]);
  }
}
