import 'package:flutter/material.dart';
import 'dart:async';

import 'package:winners_book_hackathon/Login/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()), // Replace with your main screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xFFD8FFD9), Colors.white, Colors.white],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/Logo/Logo.png', // Replace with your asset image path
            width: MediaQuery.of(context).size.width * 0.5, // Logo size as required
          ),
        ),
      ),
    );
  }
}