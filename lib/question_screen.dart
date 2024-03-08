import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
   const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: const Center(
        child: Text('This is where the questions will go!'),
      ),
    );
  }
}
