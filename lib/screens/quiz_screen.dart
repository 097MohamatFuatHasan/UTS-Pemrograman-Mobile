import 'package:flutter/material.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String quizType;
  const QuizScreen({super.key, required this.quizType});

  @override
  QuizScreenState createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  // Pertanyaan untuk kuis 1
  final List<Map<String, dynamic>> _questionsQuiz1 = [
    {
      'question': 'Apa kepanjangan dari CPU dalam komputer?',
      'options': [
        'a) Central Processing Unit',
        'b) Computer Power Unit',
        'c) Core Processing Utility',
        'd) Central Power Usage',
      ],
      'answer': 'a) Central Processing Unit',
    },
    {
      'question': 'Apa perbedaan utama antara RAM dan ROM?',
      'options': [
        'a) RAM hanya untuk membaca, ROM untuk menyimpan data',
        'b) RAM bersifat sementara, ROM bersifat permanen',
        'c) ROM lebih cepat dibandingkan RAM',
        'd) RAM lebih kecil kapasitasnya dibandingkan ROM',
      ],
      'answer': 'b) RAM bersifat sementara, ROM bersifat permanen',
    },
    {
      'question': 'Apa fungsi utama dari sistem operasi dalam komputer?',
      'options': [
        'a) Mengolah data menjadi informasi',
        'b) Menghubungkan pengguna dengan perangkat keras',
        'c) Menyimpan file dan dokumen pengguna',
        'd) Menjalankan program antivirus',
      ],
      'answer': 'b) Menghubungkan pengguna dengan perangkat keras',
    },
    {
      'question': 'Apa itu algoritma dalam pemrograman?',
      'options': [
        'a) Bahasa pemrograman terbaru',
        'b) Perangkat keras tambahan untuk komputasi',
        'c) Serangkaian langkah logis untuk menyelesaikan masalah',
        'd) Program komputer untuk mempercepat sistem',
      ],
      'answer': 'c) Serangkaian langkah logis untuk menyelesaikan masalah',
    },
    {
      'question':
          'Bahasa pemrograman apa yang banyak digunakan untuk pengembangan website?',
      'options': [
        'a) Java',
        'b) Python',
        'c) C++',
        'd) JavaScript',
      ],
      'answer': 'd) JavaScript',
    },
  ];

  // Pertanyaan untuk kuis 2
  final List<Map<String, dynamic>> _questionsQuiz2 = [
    {
      'question': 'Apa tujuan utama dari Manajemen Informatika?',
      'options': [
        'a) Mengelola data dan informasi secara efisien',
        'b) Membuat game dan aplikasi',
        'c) Menjalankan sistem operasi',
        'd) Memperbaiki perangkat keras',
      ],
      'answer': 'a) Mengelola data dan informasi secara efisien',
    },
    {
      'question':
          'Apa yang dimaksud dengan database dalam manajemen informatika?',
      'options': [
        'a) Sistem operasi terbaru',
        'b) Kumpulan data yang terstruktur dan dapat diakses',
        'c) Perangkat keras untuk penyimpanan data',
        'd) Program pengolah kata',
      ],
      'answer': 'b) Kumpulan data yang terstruktur dan dapat diakses',
    },
    {
      'question':
          'Apa perbedaan antara data dan informasi dalam konteks manajemen informatika?',
      'options': [
        'a) Data adalah informasi yang sudah diproses',
        'b) Informasi adalah data yang sudah diproses dan memiliki makna',
        'c) Data selalu berupa angka, informasi berupa teks',
        'd) Informasi tidak berguna tanpa data',
      ],
      'answer':
          'b) Informasi adalah data yang sudah diproses dan memiliki makna',
    },
    {
      'question':
          'Apa peran utama seorang analis sistem dalam manajemen informatika?',
      'options': [
        'a) Mengembangkan hardware baru',
        'b) Mengelola jaringan komputer',
        'c) Menganalisis kebutuhan sistem dan merancang solusinya',
        'd) Memperbaiki perangkat lunak yang rusak',
      ],
      'answer': 'c) Menganalisis kebutuhan sistem dan merancang solusinya',
    },
    {
      'question': 'Apa itu ERP (Enterprise Resource Planning)?',
      'options': [
        'a) Sistem perangkat lunak untuk mengintegrasikan fungsi bisnis',
        'b) Program antivirus untuk bisnis',
        'c) Teknologi baru dalam pengolahan data',
        'd) Metode enkripsi informasi',
      ],
      'answer':
          'a) Sistem perangkat lunak untuk mengintegrasikan fungsi bisnis',
    },
    {
      'question':
          'Apa yang menjadi fokus utama dari Program Studi D4 Manajemen Informatika Vokasi UNESA?',
      'options': [
        'a) Pengembangan aplikasi Desktop, Website, dan Mobile, serta keahlian di bidang kecerdasan buatan dan Big Data',
        'b) Pengajaran teori informatika tanpa praktik ',
        'c) Fokus pada ilmu manajemen umum  ',
        'd) Studi tentang sejarah komputer',
      ],
      'answer':
          'a) Pengembangan aplikasi Desktop, Website, dan Mobile, serta keahlian di bidang kecerdasan buatan dan Big Data',
    },
    {
      'question':
          'Di mana lokasi Kampus Program Vokasi UNESA yang menaungi Program Studi D4 Manajemen Informatika?',
      'options': [
        'a) Jalan Raya Ketintang, Kec. Gayungan, Kota Surabaya',
        'b) Jalan Raya Darmo, Surabaya',
        'c) Jalan Raya Gubeng, Surabaya',
        'd) Jalan Raya Merr, Surabaya'
      ],
      'answer': 'a) Jalan Raya Ketintang, Kec. Gayungan, Kota Surabaya'
    },
    {
      'question':
          'Apa salah satu inovasi terbaru yang dikembangkan oleh Program Studi D4 Manajemen Informatika UNESA?',
      'options': [
        'a) Teknologi Virtual Reality (VR)',
        'b) Perangkat keras komputer baru',
        'c) Metode pembelajaran tradisional',
        'd) Sistem operasi baru'
      ],
      'answer': 'a) Teknologi Virtual Reality (VR)'
    },
    {
      'question':
          'Apa tujuan utama dari kurikulum Program Studi D4 Manajemen Informatika UNESA?',
      'options': [
        'a) Mencetak profesional IT yang kompeten dan siap menghadapi tantangan di era digital',
        'b) Mengajarkan sejarah komputer',
        'c) Fokus pada ilmu sosial',
        'd) Mempelajari bahasa asing'
      ],
      'answer':
          'a) Mencetak profesional IT yang kompeten dan siap menghadapi tantangan di era digital'
    },
    {
      'question':
          'Sebutkan salah satu prospek karir bagi lulusan Manajemen Informatika di era digital menurut UNESA?',
      'options': [
        'a) Pengembang perangkat lunak',
        'b) Ahli sejarah',
        'c) Pustakawan',
        'd) Guru bahasa'
      ],
      'answer': 'a) Pengembang perangkat lunak'
    },
    {
      'question': 'Apa visi dari Program Studi D4 Manajemen Informatika UNESA?',
      'options': [
        'a) Menyelenggarakan dan mengelola program studi yang profesional, akuntabel, transparan, dan berdaya saing untuk memperkuat ilmu bidang rekayasa perangkat lunak',
        'b) Menjadi pusat studi sejarah komputer',
        'c) Mengembangkan ilmu sosial dan humaniora',
        'd) Fokus pada penelitian linguistik'
      ],
      'answer':
          'a) Menyelenggarakan dan mengelola program studi yang profesional, akuntabel, transparan, dan berdaya saing untuk memperkuat ilmu bidang rekayasa perangkat lunak'
    },
    {
      'question':
          'Apa salah satu kegiatan pengabdian masyarakat yang dilakukan oleh dosen Manajemen Informatika UNESA?',
      'options': [
        'a) Implementasi Scratch sebagai media pembelajaran interaktif di SDN Hangtuah 7 Surabaya',
        'b) Mengadakan seminar tentang sejarah komputer',
        'c) Pelatihan memasak untuk ibu rumah tangga',
        'd) Workshop seni lukis'
      ],
      'answer':
          'a) Implementasi Scratch sebagai media pembelajaran interaktif di SDN Hangtuah 7 Surabaya'
    },
    {
      'question':
          'Apa salah satu kategori berita yang terdapat di situs web D4 Manajemen Informatika UNESA?',
      'options': [
        'a) Kegiatan Dosen',
        'b) Berita Olahraga',
        'c) Resep Masakan',
        'd) Tips Kesehatan'
      ],
      'answer': 'a) Kegiatan Dosen'
    },
    {
      'question':
          'Apa alamat email resmi Program Studi D4 Manajemen Informatika UNESA?',
      'options': [
        'a) d4mi@unesa.ac.id',
        'b) info@unesa.ac.id',
        'c) admin@unesa.ac.id',
        'd) contact@unesa.ac.id'
      ],
      'answer': 'a) d4mi@unesa.ac.id'
    },
    {
      'question':
          'Apa salah satu prestasi yang diraih oleh mahasiswa D4 Manajemen Informatika UNESA?',
      'options': [
        'a) Juara 2 di PIMNAS 37 Kategori Poster PKM-VGK',
        'b) Juara lomba memasak tingkat nasional',
        'c) Memenangkan kompetisi tari tradisional',
        'd) Juara lomba fotografi'
      ],
      'answer': 'a) Juara 2 di PIMNAS 37 Kategori Poster PKM-VGK'
    },
  ];

  List<Map<String, dynamic>> get _currentQuestions {
    return widget.quizType == 'Kuis 1' ? _questionsQuiz1 : _questionsQuiz2;
  }

  void _nextQuestion(String selectedAnswer) {
    if (selectedAnswer == _currentQuestions[_currentQuestionIndex]['answer']) {
      _score++;
    }

    setState(() {
      if (_currentQuestionIndex < _currentQuestions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // Menghitung skor akhir berdasarkan persentase dan membulatkan
        int finalScore = ((_score / _currentQuestions.length) * 100).round();

        // Navigasi ke halaman hasil
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(score: finalScore),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.quizType),
        automaticallyImplyLeading: false, // Menghapus tombol kembali
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16.0), // Jarak horizontal
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0), // Padding untuk soal
                decoration: BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha((0.5 * 255).toInt()),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Gaya bayangan
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    _currentQuestions[_currentQuestionIndex]['question'],
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center, // Center text
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ..._currentQuestions[_currentQuestionIndex]['options']
                  .map<Widget>((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0), // Jarak antar jawaban
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      width: double.infinity, // Lebar penuh
                      child: ElevatedButton(
                        onPressed: () => _nextQuestion(option),
                        child: Text(option),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFFF9B17),
    );
  }
}
