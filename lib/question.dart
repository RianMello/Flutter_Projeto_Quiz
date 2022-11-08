import 'package:flutter/material.dart';

class QuestionCoponent extends StatelessWidget {
  final String? textQuestion;
  const QuestionCoponent(this.textQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        textQuestion!,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
