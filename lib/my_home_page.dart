

import 'package:flutter/material.dart';
import 'package:quiz_game/question_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              height: 300,
              color: const Color.fromARGB(150, 244, 67, 54),
            ),
            const SizedBox(height: 20),
            const Text('Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 20),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'start quiz',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
