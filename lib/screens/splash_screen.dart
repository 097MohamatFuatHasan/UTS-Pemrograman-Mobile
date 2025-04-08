import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  bool _showAppLogo = true;

  @override
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  void _startSplashScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showAppLogo = false; // Ganti ke logo Unesa
      });
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
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
        child: AnimatedOpacity(
          opacity: _showAppLogo ? 1.0 : 0.0,
          duration: const Duration(seconds: 2),
          child: _showAppLogo
              ? Image.asset('assets/logo_app.png') // Logo aplikasi
              : Image.asset('assets/logo_unesa.png'), // Logo Unesa
        ),
      ),
      backgroundColor: _showAppLogo ? Color(0xFFFF9B17) : Color(0xFFFFFFFF),
    );
  }
}
