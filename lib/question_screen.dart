import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is a question message!'),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Answer 1'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Answer 2'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}