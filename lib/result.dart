import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final int totalScore;
  final void Function() goBack;
  const ResultComponent(this.totalScore, this.goBack);

  String get showResult {
    if (totalScore <= 4) {
      return "Nota $totalScore. Vamos estudar mais!!";
    }
    if (totalScore == 6) {
      return "Nota $totalScore. Muito Bem, continue estudando!";
    }
    if (totalScore == 8) {
      return "Nota $totalScore. Excelente, estudos em dia!";
    }
    return "Nota $totalScore. Magnífico, um verdadeiro sabichão!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            showResult,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(onPressed: goBack, child: Text("Reiniciar?"))
      ],
    );
  }
}
