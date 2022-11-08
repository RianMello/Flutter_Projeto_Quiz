import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(QuizApp());

class _QuestionApp extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;
  void _answer(String resp) {
    if (haveSelectedQuestions) {
      setState(() {
        _selectedQuestion++;
      });
      if (resp == "certo") {
        setState(() {
          _totalScore = _totalScore + 2;
        });
      }
    }
  }

  void _goBack() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Qual a capital do Brasil?',
      'answer': [
        {'text': 'Rio de Janeiro', 'value': "errado"},
        {'text': 'Florianópolis', 'value': "errado"},
        {'text': 'Terenos', 'value': "errado"},
        {'text': 'Brasília', 'value': "certo"},
        {'text': 'São Paulo', 'value': "errado"}
      ]
    },
    {
      'text': 'Em qual temperatura a água entra em ebulição?',
      'answer': [
        {'text': '1000°F', 'value': "errado"},
        {'text': '99°C', 'value': "errado"},
        {'text': '100°C', 'value': "certo"},
        {'text': '0°C', 'value': "errado"},
        {'text': '100°F', 'value': "errado"}
      ]
    },
    {
      'text': 'Qual o maior planeta do Sistema Solar?',
      'answer': [
        {'text': 'Terra', 'value': "errado"},
        {'text': 'Jupiter', 'value': "certo"},
        {'text': 'Marte', 'value': "errado"},
        {'text': 'Plutão', 'value': "errado"},
        {'text': 'Saturno', 'value': "errado"}
      ]
    },
    {
      'text': 'Em qual data foi assinada a independência do EUA?',
      'answer': [
        {'text': '7 de Setembro de 1822', 'value': "errado"},
        {'text': '6 de Janeiro de 2001', 'value': "errado"},
        {'text': '12 de Agosto de 1671', 'value': "errado"},
        {'text': '4 de Junho de 1975', 'value': "errado"},
        {'text': '4 de Julho de 1776', 'value': "certo"}
      ]
    },
    {
      'text': 'Quem é o autor da teoria da Gravitação Universal?',
      'answer': [
        {'text': 'Valdomiro Santiago', 'value': "errado"},
        {'text': 'Albert Einstein', 'value': "errado"},
        {'text': 'Erwin Schrödinger', 'value': "errado"},
        {'text': 'Isaac Newton', 'value': "certo"},
        {'text': 'Nikola Tesla', 'value': "errado"}
      ]
    }
  ];

  bool get haveSelectedQuestions {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Genial Quiz',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: haveSelectedQuestions
            ? QuizComponent(
                answer: _answer,
                selectedQuestion: _selectedQuestion,
                questions: _questions)
            : ResultComponent(_totalScore, _goBack),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuestionApp createState() {
    return _QuestionApp();
  }
}
