import 'package:flutter/material.dart';
import 'package:quiz_app/ques_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizContent();
  }
}

class _QuizContent extends State<Quiz> {
  Widget activeScreen = const StartScreen(switchScreen);

  void switchScreen() {
    setState(() {
      activeScreen = const QuesScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 55, 21, 113),
                Color.fromARGB(255, 143, 108, 203),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
