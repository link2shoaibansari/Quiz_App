import 'package:flutter/material.dart';

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
    return const Text("Questions are Here!!");
  }
}
