import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widgets/question_card.dart';
import '../widgets/custom_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with AutomaticKeepAliveClientMixin {
  int currentIndex = 0;
  int score = 0;

  @override
  bool get wantKeepAlive => true;

  void answerQuestion(int selectedIndex) {
    if (selectedIndex == questions[currentIndex].correctAnswerIndex) {
      score++;
    }

    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      Navigator.pushReplacementNamed(context, '/result', arguments: score);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final name = ModalRoute.of(context)?.settings.arguments as String?;
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Hai, ${name ?? 'Pengguna'}"),
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
                  Navigator.pushReplacementNamed(context, '/result',
                      arguments: score);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
