import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionsProvider = Provider<List<Question>>((ref) => questions);

class Question {
  final String question;
  final List<String> answers;

  Question({required this.question, required this.answers});
}

// Dummy data!!!
List<Question> questions = [
  Question(
    question: 'これは質問1です',
    answers: ['答え1-1', '答え1-2', '答え1-3', '答え1-4'],
  ),
  Question(
    question: 'これは質問2です',
    answers: ['答え2-1', '答え2-2', '答え2-3'],
  ),
];
