import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
          width: 300),
          const SizedBox(height: 20),
          Text('Learn flutter the fun way!',
          style: TextStyle(
            color: const Color.fromARGB(255, 26, 19, 56),
            fontSize: 20,
          ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: 
              const Color.fromARGB(255, 176, 159, 223)
            ),
            child: const Text('Start Quiz'),
            )
        ],
      ),
      );
  }
}
