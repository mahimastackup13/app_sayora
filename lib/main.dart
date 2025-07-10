import 'package:flutter/material.dart';
import 'package:sayoraaa/screens/login_screen.dart';
// import 'package:screens/onboarding_screen.dart';
import 'package:sayoraaa/screens/level_screen.dart';

import 'screens/chat_screen.dart';

void main() {
  runApp(const SayoraApp());
}

class SayoraApp extends StatelessWidget {
  const SayoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const  LevelScreen(),
    //    routes: {
    //   '/login': (context) => const LoginScreen(),
    // },
    );
  }
}
