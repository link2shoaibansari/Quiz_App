import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key});
  @override
  State<QuesScreen> createState() {
    return _QuesContent();
  }
}

class _QuesContent extends State<QuesScreen> {
  @override
  Widget build(context) {
    // return const Text("Questions are Here!!");
    // now we want to display qustion and below that their answers:
    return SizedBox(
      // to display options in whole screen
      width: double.infinity, // as wide as possible acc to the screen
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //content at center of screen
        children: [
          Text('The question..', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1', 
            onTap: () {}),
          AnswerButton(
            answerText: 'Answer 2', 
            onTap: () {}),
          AnswerButton(
            answerText: 'Answer 3', 
            onTap: () {}),
          ],
      ),
    );
  }
}
