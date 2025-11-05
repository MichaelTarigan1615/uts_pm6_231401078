class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

final List<Question> questions = [
  Question(
    questionText: 'Hasil dari 12 + 24 ÷ 6 × 2 adalah...',
    options: ['10', '20', '24', '32'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Nilai dari 3x + 5 = 20, maka x = ...',
    options: ['3', '4', '5', '6'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Sebuah persegi memiliki keliling 48 cm. Panjang sisinya adalah...',
    options: ['10 cm', '11 cm', '12 cm', '13 cm'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Hasil dari 2³ × 3² adalah...',
    options: ['12', '18', '24', '72'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Jika sebuah lingkaran memiliki jari-jari 7 cm, maka luasnya adalah... (π = 22/7)',
    options: ['144 cm²', '154 cm²', '164 cm²', '176 cm²'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Pecahan senilai dari 3/4 adalah...',
    options: ['6/8', '9/10', '8/10', '5/6'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Hasil dari (x² – 4) ÷ (x – 2) adalah...',
    options: ['x – 2', 'x + 2', 'x² + 2', 'x² – 2'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Rata-rata dari 8, 10, 12, 14, dan 16 adalah...',
    options: ['10', '11', '12', '13'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Nilai dari 5² – 3³ adalah...',
    options: ['–4', '16', '8', '10'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Sebuah tabung memiliki jari-jari 3 cm dan tinggi 10 cm. Volume tabung adalah... (π = 3,14)',
    options: ['282,6 cm³', '314 cm³', '471 cm³', '942 cm³'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Jika a = 2 dan b = –3, maka nilai dari a² + 2ab + b² adalah...',
    options: ['1', '4', '25', '49'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Hasil dari sin 30° + cos 60° adalah...',
    options: ['1', '0,5', '√3/2', '3/2'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Gradien garis yang melalui titik (1,2) dan (4,8) adalah...',
    options: ['1', '2', '3', '4'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Nilai dari log₁₀(1000) adalah...',
    options: ['1', '2', '3', '4'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Jika f(x) = 2x + 5, maka f(3) = ...',
    options: ['8', '9', '10', '11'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Hasil dari (2x + 3)(x – 4) adalah...',
    options: ['2x² – 8x + 3x – 12', '2x² – 5x – 12', 'x² – 4x + 3', '2x² – 11x – 12'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Peluang muncul angka genap pada dadu adalah...',
    options: ['1/6', '1/3', '1/2', '2/3'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Jumlah sudut segitiga adalah...',
    options: ['90°', '120°', '180°', '360°'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Jika nilai x memenuhi 3x – 9 = 0, maka x = ...',
    options: ['2', '3', '4', '5'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Hasil dari akar kuadrat 196 adalah...',
    options: ['12', '13', '14', '15'],
    correctAnswerIndex: 2,
  ),
];
