// Import package Flutter Material Design
import 'package:flutter/material.dart';
// Import halaman home screen
import 'home_screen.dart';

// Widget ResultScreen yang merupakan StatelessWidget
// StatelessWidget digunakan karena tampilan hanya menampilkan hasil yang sudah final
class ResultScreen extends StatelessWidget {
  // Parameter untuk menyimpan skor yang didapat dari quiz
  final int score;
  // Constructor dengan parameter wajib score
  const ResultScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan judul halaman hasil
      appBar: AppBar(
        title: const Text('Hasil Kuis'),
      ),
      // Body utama yang menampilkan hasil quiz
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan skor yang didapat
            Text('Nilai Anda: $score'),
            // Tombol untuk kembali ke halaman utama
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman utama dan menghapus semua halaman sebelumnya dari stack
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Kembali ke Halaman Utama'),
            ),
          ],
        ),
      ),
    );
  }
}
