import 'package:flutter/material.dart';

class WaterDropButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(24),
            primary: Colors.green, // Button color
            onPrimary: Colors.white, // Text color
          ),
          onPressed: () {
            // Handle button press
          },
          child: Image.asset('assets/Icons/WaterDrop.png',
          width: MediaQuery.of(context).size.width * 0.1,), // Icon inside button
        ),
      ],
    );
  }
}