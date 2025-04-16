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
  //lifting state up for storing the answers selected
  final List<String> selectedAnswers = []; //storing answers in list

  // Widget? activeScreen;  // method 1
  // ititially Widget is null (Widget?)
  // Widget activeScreen = const StartScreen(switchScreen);

  //method 2:
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState(); //additional initialization for parent class <Quiz>
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuesScreen();
      activeScreen = 'questions-screen';
    });
  }

  //method which helps to add answers in the list of selectedAnswers
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    //using if conditioning for linking multiple pages:
    // final screenWidget =
    //     activeScreen == 'start-screen'
    //         ? StartScreen(switchScreen)
    //         : const QuesScreen();

    // using if condition isntead above ternary code (optional)

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuesScreen(onSelectAnswer: chooseAnswer);
    }

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

          // child: activeScreen,   // method 1

          //using ternary expression for method 2:

          //   child: activeScreen == 'start-screen' // condition(yields T/F)
          //   ? StartScreen(switchScreen)         // if main condition is True
          //   : const QuesScreen(),               // if main condition is False

          // method 3:
          child: screenWidget, // defining the above declared widget in child
        ),
      ),
    );
  }
}
