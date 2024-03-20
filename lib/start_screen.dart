import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
              opacity: 0.8,
              child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          const SizedBox(height: 80),
          Text(
            'Let\'s start quizzing!',
            style: GoogleFonts.lato(
                fontSize: 24, fontWeight: FontWeight.bold,
                color:const Color.fromARGB(255, 229, 193, 250)),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
