// Import package Flutter Material Design yang diperlukan
import 'package:flutter/material.dart';
// Import halaman splash screen
import 'screens/splash_screen.dart';

// Fungsi utama yang akan dijalankan saat aplikasi dimulai
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi yang merupakan StatelessWidget
// StatelessWidget digunakan karena tampilan aplikasi tidak akan berubah berdasarkan state internal
class MyApp extends StatelessWidget {
  // Constructor dengan parameter key opsional
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengembalikan MaterialApp sebagai root widget aplikasi
    return MaterialApp(
      // Judul aplikasi yang akan muncul di task manager
      title: 'Quiz App',
      // Konfigurasi tema aplikasi
      theme: ThemeData(
        // Mendefinisikan warna utama aplikasi dengan MaterialColor
        // Menggunakan warna biru navy (#1E3A8A) sebagai warna dasar
        primarySwatch: MaterialColor(0xFF1E3A8A, <int, Color>{
          50: Color(0xFFE3EAFD), // Warna paling terang
          100: Color(0xFFB3C5FB),
          200: Color(0xFF809DF9),
          300: Color(0xFF4D75F7),
          400: Color(0xFF2657F5),
          500: Color(0xFF1E3A8A), // Warna dasar
          600: Color(0xFF1A3382),
          700: Color(0xFF162C78),
          800: Color(0xFF12256E),
          900: Color(0xFF0A185C), // Warna paling gelap
        }),
      ),
      // Menentukan halaman awal aplikasi sebagai SplashScreen
      home: const SplashScreen(),
      // Menyembunyikan banner debug di pojok kanan atas
      debugShowCheckedModeBanner: false,
    );
  }
}
