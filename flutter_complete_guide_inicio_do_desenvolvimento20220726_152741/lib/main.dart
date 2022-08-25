import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print("Pressionou o botão 1");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'), 
              //onPressed: answerQuestion() : se colocar os parenteses o método/função
              //será executado quando o programa estiver sendo lido para ser executado
              //e não qdo o botão for clicado
              onPressed: answerQuestion
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