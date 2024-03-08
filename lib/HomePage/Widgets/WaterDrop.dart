import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterDropButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WaterDropButton({ Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            primary: Colors.green, // Button color
            onPrimary: Colors.white, // Text color
          ),
          onPressed: onPressed, // Use the passed onPressed function
          child: Image.asset(
            'assets/Icons/WaterDrop.png',
            width: MediaQuery.of(context).size.width * 0.07,
          ), // Icon inside button
        ),
        Text('اسق نبتتك', style: GoogleFonts.readexPro()), // Text below button
      ],
    );
  }
}
