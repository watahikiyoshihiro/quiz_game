import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_game/build_answer_button.dart';
import 'package:quiz_game/question.dart';
import 'package:quiz_game/question_counter.dart';

class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionsProvider);
    final questionCount = ref.watch(questionCounterNotifierProvider);
    final totalQuestions = questions.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            // Show the question text
            Text(questions[questionCount].question),
            // For each answer, show a TextButton with the answer text
            // and a SizedBox of height 20 to separate the buttons
            ...questions[questionCount].answers.expand(
                  (answer) => [
                    BuildAnswerButton(
                        answerText: answer,
                        ref: ref,
                        context: context,
                        questionCount: questionCount,
                        totalQuestions: totalQuestions),
                    const SizedBox(height: 20),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
