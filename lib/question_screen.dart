import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_game/question.dart';

class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  Widget buildAnswerButton(String answerText) {
    return TextButton(
      onPressed: () {},
      child: Text(answerText),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            // The first question text
            Text(questions[0].question), //Dummy question data!!!
            // For each answer, show a TextButton with the answer text
            // and a SizedBox of height 20 to separate the buttons
            ...questions[0].answers.expand(
                  (answer) => [
                    buildAnswerButton(answer),
                    const SizedBox(height: 20),
                  ],
                ), //Dummy answer data!!!
          ],
        ),
      ),
    );
  }
}
