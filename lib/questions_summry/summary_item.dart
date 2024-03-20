import 'package:adv_basic/questions_summry/questions_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width:20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String,
                  style: GoogleFonts.lato(color: Colors.white)),
              const SizedBox(height: 5),
              Text(itemData['user_answer'] as String,
                  style: const TextStyle(
                      color:  Color.fromARGB(255, 233, 120, 158))),
              Text(itemData['correct_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 106, 181, 243))),
            ],
          ),
        ),
      ],
    );
  }
}
