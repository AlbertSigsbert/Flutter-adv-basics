import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300),

            OutlinedButton(
              style:OutlinedButton.styleFrom(
                padding: const EdgeInsets.only(top:20),
                foregroundColor: Colors.white
              ),
              onPressed: () {},
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
