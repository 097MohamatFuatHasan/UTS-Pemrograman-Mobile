import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import 'article_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Selamat Datang Di MIQuizz',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFEDEDED),
            ),
          ),
        ),
        backgroundColor: Color(0xFFFF9B17),
        automaticallyImplyLeading: false,
        elevation: 4.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color(0xFF1E3A8A)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // CARD BARU: Info Fakultas Vokasi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar Fakultas Vokasi
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        child: Image.asset(
                          'assets/foto_web.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 150,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Fakultas Vokasi adalah bagian dari perguruan tinggi yang menawarkan program pendidikan berbasis keterampilan praktis dan siap kerja. Program studi di fakultas ini dirancang untuk membekali mahasiswa dengan keahlian teknis yang sesuai dengan kebutuhan industri.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ArticleScreen(),
                                ),
                              );
                            },
                            child: const Text('Baca Lebih Lanjut'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // SCROLL HORIZONTAL UNTUK CARD QUIZ
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      // CARD 1: Soal Umum Informatika
                      SizedBox(
                        width: 200, // Lebar card sama
                        height: 150, // Tinggi card sama
                        child: Card(
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Soal Umum Informatika',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const QuizScreen(
                                            quizType: 'Kuis 1',
                                          ),
                                    ),
                                  );
                                },
                                child: const Text('Mulai'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 16), // Jarak antar card
                      // CARD 2: Soal Manajemen Informatika dan Vokasi
                      SizedBox(
                        width: 200, // Lebar card sama
                        height: 150, // Tinggi card sama
                        child: Card(
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Soal Manajemen Informatika dan Vokasi',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const QuizScreen(
                                            quizType: 'Kuis 2',
                                          ),
                                    ),
                                  );
                                },
                                child: const Text('Mulai'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
