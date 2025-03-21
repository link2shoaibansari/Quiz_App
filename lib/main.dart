import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient:LinearGradient(
              colors: [
                Color.fromARGB(255, 55, 21, 113),
                Color.fromARGB(255, 143, 108, 203),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
          ),
          child: StartScreen()
          ),
      ),
    ),
  );
}
