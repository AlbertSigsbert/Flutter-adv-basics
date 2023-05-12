import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;


    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer ? Colors.green: Colors.red
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
