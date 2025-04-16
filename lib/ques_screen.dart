import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuesScreen> createState() {
    return _QuesContent();
  }
}

class _QuesContent extends State<QuesScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // to change question index at each click
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion =
        questions[currentQuestionIndex]; //calling current question index

    // return const Text("Questions are Here!!");
    // now we want to display qustion and below that their answers:
    return SizedBox(
      // to display options in whole screen
      width: double.infinity, // as wide as possible acc to the screen
      child: Container(
        margin: const EdgeInsets.all(40), //spacig between options buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical axis
          crossAxisAlignment: CrossAxisAlignment.stretch, // horizontal axis
          children: [
            Text(
              // 'The question..',
              currentQuestion.text, // calling question list index at [0]
              //importing font style from google fonts
              // style: const TextStyle(color: Colors.white),
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 2, 21, 24),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // text in centre of the screen
            ),
            SizedBox(height: 30),

            // spreading values(...)
            // ...currentQuestion.answers.map((answer) {

            // calling getShuffledAnswers for shuffled options
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {     // executes only when AnswerButton gets triggered
                  answerQuestion(answer);
                },
              );
            }), //calling answerQuestion function when clicking onto the button
            // using spreadin values(...), no need of defining
            // below code seperately

            // accessing answers list index wise:
            //although writing code repeatedly is not recommended
            //   AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
            //   AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            //   AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            //   AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
