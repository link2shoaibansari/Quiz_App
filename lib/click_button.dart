import 'package:flutter/material.dart';

class ClickButton extends StatefulWidget {
  const ClickButton({super.key});
  @override
  State<ClickButton> createState(){
    return _ClickButton();
  }
}
class _ClickButton extends State<ClickButton>{
  void StartQuiz(){}
}

@override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisSize.max,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png'),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: StartQuiz, 
          child: child)
      ],
    );
}

