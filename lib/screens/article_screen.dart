// Import package Flutter Material Design
import 'package:flutter/material.dart';

// Widget ArticleScreen yang merupakan StatelessWidget
// StatelessWidget digunakan karena tampilan artikel bersifat statis
class ArticleScreen extends StatelessWidget {
  // Constructor dengan parameter key opsional
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan judul artikel
      appBar: AppBar(
        title: const Text(
          'Artikel Vokasi UNESA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFEDEDED),
          ),
        ),
        backgroundColor: const Color(0xFFFF9B17), // Warna oranye untuk AppBar
        elevation: 4.0, // Memberikan efek bayangan pada AppBar
      ),
      // Body utama yang menampilkan konten artikel
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xFF1E3A8A),
        ), // Background biru navy
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar header artikel dengan efek rounded corners
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/foto_web1.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // Judul utama artikel
              const Text(
                'Fakultas Vokasi UNESA: Membentuk Generasi Unggul dan Siap Kerja',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // Paragraf pembuka artikel
              const Text(
                'Fakultas Vokasi Universitas Negeri Surabaya (UNESA) merupakan salah satu fakultas unggulan yang berfokus pada pendidikan vokasi dan pengembangan keterampilan praktis. Didirikan dengan visi menjadi pusat pengembangan pendidikan vokasi yang berstandar internasional, fakultas ini telah menghasilkan banyak lulusan yang siap bersaing di dunia kerja.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Sub-judul untuk program studi
              const Text(
                'Program Studi Unggulan:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),

              // Daftar program studi menggunakan widget helper
              _buildProgramStudi('D3 Manajemen Informatika'),
              _buildProgramStudi('D3 Teknik Informatika'),
              _buildProgramStudi('D3 Sistem Informasi'),
              _buildProgramStudi('D4 Manajemen Informatika'),

              const SizedBox(height: 16),

              // Sub-judul untuk keunggulan fakultas
              const Text(
                'Keunggulan Fakultas Vokasi UNESA:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),

              // Daftar keunggulan menggunakan widget helper
              _buildKeunggulan(
                'Kurikulum berbasis industri dan kebutuhan pasar kerja',
              ),
              _buildKeunggulan('Fasilitas laboratorium modern dan lengkap'),
              _buildKeunggulan(
                'Kerjasama dengan berbagai perusahaan dan industri',
              ),
              _buildKeunggulan(
                'Pengajar profesional dengan pengalaman industri',
              ),
              _buildKeunggulan('Program magang dan praktik kerja lapangan'),

              const SizedBox(height: 16),

              // Paragraf penutup artikel
              const Text(
                'Fakultas Vokasi UNESA terus berkomitmen untuk menghasilkan lulusan yang tidak hanya memiliki kemampuan teknis yang baik, tetapi juga memiliki soft skills yang diperlukan di dunia kerja. Dengan berbagai program unggulan dan fasilitas yang disediakan, fakultas ini menjadi pilihan tepat bagi calon mahasiswa yang ingin mengembangkan diri di bidang teknologi informasi dan manajemen.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper untuk membuat item program studi
  // Menampilkan program studi dengan ikon centang
  Widget _buildProgramStudi(String program) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Color(0xFFFF9B17)),
          const SizedBox(width: 8),
          Text(
            program,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Widget helper untuk membuat item keunggulan
  // Menampilkan keunggulan dengan ikon bintang
  Widget _buildKeunggulan(String keunggulan) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.star, color: Color(0xFFFF9B17)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              keunggulan,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
