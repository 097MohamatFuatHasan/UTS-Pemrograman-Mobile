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

 
