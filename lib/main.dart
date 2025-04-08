import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF1E3A8A, <int, Color>{
          50: Color(0xFFE3EAFD),
          100: Color(0xFFB3C5FB),
          200: Color(0xFF809DF9),
          300: Color(0xFF4D75F7),
          400: Color(0xFF2657F5),
          500: Color(0xFF1E3A8A),
          600: Color(0xFF1A3382),
          700: Color(0xFF162C78),
          800: Color(0xFF12256E),
          900: Color(0xFF0A185C),
        }),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
