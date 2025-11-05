import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../data/questions.dart'; 

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final score = ModalRoute.of(context)?.settings.arguments as int? ?? 0;
    final total = questions.length; 

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/trophy.png', height: 150),
              const SizedBox(height: 30),
              Text(
                "Skor Akhir Kamu: $score / $total",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Kembali ke Beranda",
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
