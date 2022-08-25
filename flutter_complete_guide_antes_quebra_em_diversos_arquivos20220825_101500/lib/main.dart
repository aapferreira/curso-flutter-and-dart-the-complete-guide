import 'package:flutter/material.dart';

//void main() {
//  runApp(MeuAplicativo());
//}

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return  _MeuAplicativoState();
  }

}

//para tornar uma classe/método/atributo de público para privado
//basta adicionar um underscore em frente ao nome:
// público: questionIndex
// privado: _questionIndex
class _MeuAplicativoState extends State<MeuAplicativo> {

  var _questionIndex = 0;

  void _answerQuestion() {
    //setState chama e executa o build novamente
    setState(() {
      _questionIndex = _questionIndex + 1;  
    });    
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colorr?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex]
            ),
            RaisedButton(
              child: Text('Answer 1'), 
              //onPressed: answerQuestion() : se colocar os parenteses o método/função
              //será executado quando o programa estiver sendo lido para ser executado
              //e não qdo o botão for clicado
              onPressed: _answerQuestion
            ),
            RaisedButton(
              child: Text('Answer 2'), 
              //usando uma função anônima (forma curta)
              //isso pode ser feito com uma função anônima pois ela
              //é apenas a definição de uma função e só é excutada
              //quando o botão é clicado
              onPressed: () => print("Pressionou o botão 2")
            ),
            RaisedButton(
              child: Text('Answer 3'), 
              //usando uma função anônima (forma longa)
              //isso pode ser feito com uma função anônima pois ela
              //é apenas a definição de uma função e só é excutada
              //quando o botão é clicado
              onPressed: () {
                print("Pressionou ... ");
                print("... o botão 3");
              },
            ),
          ],
        ),
      ),
    );
  }
}