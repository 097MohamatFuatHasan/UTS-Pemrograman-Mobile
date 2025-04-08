// Model class untuk menyimpan data pertanyaan quiz
class Question {
  // Property untuk menyimpan teks pertanyaan
  final String question;
  // Property untuk menyimpan list opsi jawaban
  final List<String> options;
  // Property untuk menyimpan jawaban yang benar
  final String answer;

  // Constructor dengan parameter wajib untuk semua property
  Question({
    required this.question,
    required this.options,
    required this.answer,
  });
}
