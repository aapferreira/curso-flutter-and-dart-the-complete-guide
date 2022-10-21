import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MeuAplicativo());
//}

void main() => runApp(MeuAplicativo());

//para tornar uma classe/método/atributo de público para privado
//basta adicionar um underscore em frente ao nome:
// público: questionIndex
// privado: _questionIndex
class MeuAplicativo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeuAplicativoState();
  }
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  var _questionIndex = 0;

  // Map questions = Map<String, String>();
  // questions = {'aaa':'aaa', 'bbb':'bbb', 'ccc':'ccc'};
  //const é uma compile time constante, ou seja, é setada no código quando o sistema
  //é compilado e depois não é mais modificado
  //const questions = [] é diferente de questions = const[]
  //const questions = [] a constante não pode ser alterada
  //questions = conts [] os valores não podem ser alterados
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 7},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 3},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Inst1', 'score': 10},
        {'text': 'Inst2', 'score': 7},
        {'text': 'Inst3', 'score': 5},
        {'text': 'Inst4', 'score': 3},
      ],
    },
  ];

  void _answerQuestion(int score) {
    //print('Answer chosen!');
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Aplicativo!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
