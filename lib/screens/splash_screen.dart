import 'package:flutter/material.dart';
import 'home_screen.dart';

// Widget SplashScreen yang merupakan StatefulWidget
// StatefulWidget digunakan karena tampilan akan berubah selama splash screen ditampilkan
class SplashScreen extends StatefulWidget {
  // Constructor dengan parameter key opsional
  const SplashScreen({super.key});

  @override
  // Membuat state untuk SplashScreen
  SplashScreenState createState() => SplashScreenState();
}

// State class untuk SplashScreen
class SplashScreenState extends State<SplashScreen> {
  // Variable untuk mengontrol tampilan logo
  bool _showAppLogo = true;

  @override
  // Method yang dipanggil saat widget pertama kali dibuat
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  // Method untuk mengatur animasi dan transisi splash screen
  void _startSplashScreen() {
    // Menunggu 2 detik sebelum mengganti logo
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showAppLogo = false; // Mengganti logo aplikasi dengan logo Unesa
      });
      // Menunggu 2 detik lagi sebelum pindah ke halaman home
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          // Navigasi ke halaman home dan menghapus splash screen dari stack
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Widget AnimatedOpacity untuk memberikan efek fade in/out pada logo
        child: AnimatedOpacity(
          opacity: _showAppLogo ? 1.0 : 0.0,
          duration: const Duration(seconds: 2),
          child:
              _showAppLogo
                  ? Image.asset(
                    'assets/logo_app.png',
                  ) // Menampilkan logo aplikasi
                  : Image.asset(
                    'assets/logo_unesa.png',
                  ), // Menampilkan logo Unesa
        ),
      ),
      // Mengubah warna background sesuai dengan logo yang ditampilkan
      backgroundColor: _showAppLogo ? Color(0xFFFF9B17) : Color(0xFFFFFFFF),
    );
  }
}
