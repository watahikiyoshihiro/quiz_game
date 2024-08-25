

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_game/question_counter.dart';
import 'package:quiz_game/result.dart';

class BuildAnswerButton extends StatelessWidget {
  const BuildAnswerButton({
    super.key,
    required this.answerText,
    required this.ref,
    required this.context,
    required this.questionCount,
    required this.totalQuestions,
  });

  final String answerText;
  final WidgetRef ref;
  final BuildContext context;
  final int questionCount;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (questionCount < totalQuestions - 1) {
          ref.read(questionCounterNotifierProvider.notifier).updateState();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ResultScreen(),
            ),
          );
        }
      },
      child: Text(answerText),
    );
  }
}
