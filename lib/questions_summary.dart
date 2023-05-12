import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Padding(
            padding: const EdgeInsets.only(bottom:12.0),
            child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 170, 79, 176),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                 const SizedBox(width: 20),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question'] as String),
                          style:
                              const TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text((data['user_answer']) as String),
                        Text((data['correct_answer']) as String),
                      ],
                    ),
                  ), 
                  
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
