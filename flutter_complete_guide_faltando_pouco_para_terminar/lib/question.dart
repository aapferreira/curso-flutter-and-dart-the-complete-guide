import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final é uma runtime constante, ou seja, é setada quando o objeto é criado em tempo de execução e depois não é mais modificado
  final String questionText;

  //construtor tradicional
  // Question(String questionText) {
  //   this.questionText = questionText;
  // }

  //construtor forma curta
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
