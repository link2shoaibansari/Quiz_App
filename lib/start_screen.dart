import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        // make things appear in center of screen
        mainAxisSize: MainAxisSize.min, // min for colums, max for row
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300, // METHOD 2
            color: const Color.fromARGB(
              149,
              229,
              218,
              218,
            ), //change opacity by using the slider option
          ),
          // Opacity(         // METHOD1
          //   opacity: 0.5,  //set opacity value directly
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //   width: 300),
          // ),
          const SizedBox(height: 20), // spacing between adjacent items
          Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              // styling of the displayed text
              color: const Color.fromARGB(255, 26, 19, 56),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20), // spacing between text and button
          // OutlinedButton(             // style of button is outlined design
          //   onPressed: (){},
          //   style: OutlinedButton.styleFrom(
          //     foregroundColor:         // color of text in button
          //     const Color.fromARGB(255, 176, 159, 223)
          //   ),
          //   child: const Text('Start Quiz'),   // displayed text on button
          //   )
          ElevatedButton.icon(
            // style of button is elevated
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 186, 147, 223),
              foregroundColor: const Color.fromARGB(255, 6, 53, 30),
            ),
            icon: Icon(Icons.arrow_circle_right_sharp),
            label: Text(
              'Start Quiz!!',
            ), // for using icon, change child to label
          ),
        ],
      ),
    );
  }
}
