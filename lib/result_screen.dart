import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenQuestions});

  final List<String> chosenQuestions;

  List<Map<String,Object>> getSummaryData(){
      final List<Map<String,Object>> summary = [];

      for(var i = 0; i<chosenQuestions.length; i++){
        summary.add({
          'question_index':i,
          'question':questions[i].text,
          'correct_answer':questions[i].answers[0],
          'user_answer':chosenQuestions[i]
        });
      }

      return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const Text(
              'You answered 3 out of 6 questions correctly!',
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text('Scrollable Widget...'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
