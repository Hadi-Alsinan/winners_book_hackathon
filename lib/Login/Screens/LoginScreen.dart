import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  // This would be your main screen after the splash screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Text('This is the main screen'),
      ),
    );
  }
}