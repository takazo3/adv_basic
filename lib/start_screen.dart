import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Opacity(
        opacity: 0.8,
        child: Image.asset('assets/images/quiz-logo.png',width: 300)),
        const SizedBox(height: 80),
        const Text('Let\'s start quizzing!',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          ),
          onPressed: (){},
          icon:const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        ),



        ],
      ),
    );
  }
}
