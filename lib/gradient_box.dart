import 'package:flutter/material.dart';
import 'package:quiz_app/click_button.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientBox extends StatelessWidget {
  const GradientBox({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
      child: Center(
        child: ClickButton(),
      ),
    );
  }
}
