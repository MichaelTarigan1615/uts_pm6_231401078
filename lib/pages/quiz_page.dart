import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widgets/question_card.dart';
import '../widgets/custom_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int score = 0;

  void answerQuestion(int selectedIndex) {
    if (selectedIndex == questions[currentIndex].correctAnswerIndex) {
      score++;
    }

    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      final args = ModalRoute.of(context)?.settings.arguments as Map?;
      final name = args?['name'] ?? 'Pengguna';

      Navigator.pushReplacementNamed(
        context,
        '/result',
        arguments: {'name': name, 'score': score},
      );
    }
  }

  void goBackToPreviousQuestion() {
    if (currentIndex > 0) {
      setState(() => currentIndex--);
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    final name = args?['name'] ?? 'Pengguna';
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Selamat Mengerjakan Quiz"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: goBackToPreviousQuestion,
        ),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (currentIndex + 1) / questions.length,
            backgroundColor: Colors.grey[300],
          ),
          Expanded(
            child: QuestionCard(
              question: question.questionText,
              options: question.options,
              onSelected: answerQuestion,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              text: "Lewati",
              onTap: () {
                if (currentIndex < questions.length - 1) {
                  setState(() => currentIndex++);
                } else {
                  Navigator.pushReplacementNamed(
                    context,
                    '/result',
                    arguments: {'name': name, 'score': score},
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
