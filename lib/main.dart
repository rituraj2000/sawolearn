import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sawolearn/Assets/assets.dart';
import 'package:sawolearn/Screens/login.dart';
import 'package:sawolearn/Screens/onboard.dart';
import 'package:sawolearn/Screens/player_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squid Game Sawo Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: OnboardingScreen()),
    );
  }
}
