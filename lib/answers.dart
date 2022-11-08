import 'package:flutter/material.dart';

class AnswersCoponent extends StatelessWidget {
  final String? answers;
  final void Function() whenSelected;
  const AnswersCoponent(this.answers, this.whenSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.parse("200"),
      height: double.parse("50"),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white, fontSize: 16),
            backgroundColor: Colors.blue),
        child: Text(answers!),
        onPressed: whenSelected,
      ),
    );
  }
}
