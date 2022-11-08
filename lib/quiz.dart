import 'package:flutter/material.dart';
import 'question.dart';
import 'answers.dart';

class QuizComponent extends StatelessWidget {
  const QuizComponent({
    required this.answer,
    required this.selectedQuestion,
    required this.questions,
  });

  final int selectedQuestion;
  final List<Map<String, Object>> questions;

  final void Function(String) answer;

  bool get haveSelectedQuestions {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveSelectedQuestions
        ? questions[selectedQuestion].cast()['answer']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: <Widget>[
        QuestionCoponent(questions[selectedQuestion]['text'].toString()),
        ...answers.map((resp) {
          return AnswersCoponent(resp['text'].toString(),
              () => answer((resp['value'].toString())));
        }).toList(),
      ],
    );
  }
}
