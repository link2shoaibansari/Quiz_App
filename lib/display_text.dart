import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  const DisplayText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      'Learn flutter the fun way!',
      style: TextStyle(color: 
      const Color.fromARGB(255, 82, 138, 217),
      fontSize: 60),
    );
  }
}
