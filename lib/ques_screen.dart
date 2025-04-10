import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key});
  @override
  State<QuesScreen> createState() {
    return _QuesContent();
  }
}

class _QuesContent extends State<QuesScreen> {

  var currentQuestionIndex = 0;
  void answerQuestion() {
    // to change question index at each click
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex]; //calling current question index

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
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center, // text in centre of the screen
            ),
            SizedBox(height: 30),

            // spreading values(...)
            // ...currentQuestion.answers.map((answer) {

            // calling getShuffledAnswers for shuffled options
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion); 
            }),    //calling answerQuestion function when clicking onto the button

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
