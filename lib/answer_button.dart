import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    {super.key,
    required this.answerText,
    required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,            //button styling
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40
        ),
        backgroundColor: const Color.fromARGB(255, 17, 33, 61),
        foregroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45)),
      ),
      child: Text(answerText, textAlign: TextAlign.center),//display options in center
    );
  }
}
