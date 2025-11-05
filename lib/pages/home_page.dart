import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: screenHeight * 0.15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/quiz.png', height: screenHeight * 0.25),
            const SizedBox(height: 30),
            const Text("Selamat Datang di Kuis Pintar!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Nama Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Mulai Kuis",
              onTap: () {
                if (_nameController.text.isNotEmpty) {
                  Navigator.pushNamed(context, '/quiz',
                      arguments: _nameController.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
