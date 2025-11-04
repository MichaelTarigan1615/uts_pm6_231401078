import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  final List<Strinq> options;
  final ValueChanged<int> onSelected;

  const QuestionCard({
    super.key,
    required this.question,
    required this.options,
    required this.onSelected,
  })

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ...List.generate(
              options.length,
              (index) => Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => onSelected(index),
                  child: Text(options[index]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
