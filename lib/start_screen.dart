import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(             // make things appear in center of screen
        mainAxisSize: MainAxisSize.min,    // min for colums, max for row
        children: [
          Image.asset('assets/images/quiz-logo.png',
          width: 300),
          const SizedBox(height: 20),       // spacing between adjacent items
          Text('Learn flutter the fun way!',
          style: TextStyle(               // styling of the displayed text
            color: const Color.fromARGB(255, 26, 19, 56),
            fontSize: 20,
          ),
          ),
          const SizedBox(height: 20),   // spacing between text and button
          // OutlinedButton(             // style of button is outlined design
          //   onPressed: (){},
          //   style: OutlinedButton.styleFrom(
          //     foregroundColor:         // color of text in button
          //     const Color.fromARGB(255, 176, 159, 223)
          //   ),
          //   child: const Text('Start Quiz'),   // displayed text on button
          //   )
          ElevatedButton(        // style of button is elevated
            onPressed: (){},
            style:ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 186, 147, 223),
              foregroundColor: const Color.fromARGB(255, 6, 53, 30),
            ),
            child: Text('Start Quiz!!'),
            )
        ],
      ),
      );
  }
}
