
import 'package:flutter/material.dart';
import './question.dart';
import './button.dart';

main() => runApp(AskApp());

class _AskAppState extends State<AskApp> {
  var _selected = 0;
  
  void responser() {
    setState(() {
      _selected++;  
    });
    print('Pergunta respondida!');
  }
  
  @override
  Widget build(BuildContext context) {

    final asks = [
      'Qual seu animal preferido?',
      'Qual sua cor preferida?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(asks[_selected]),
            Button('Resposta 1', responser),
            Button('Resposta 2', responser),
            Button('Resposta 3', responser)
          ],
        ),
      ),
    );
  }
}

class AskApp extends StatefulWidget {

  _AskAppState createState() {
    return _AskAppState();
  }
}