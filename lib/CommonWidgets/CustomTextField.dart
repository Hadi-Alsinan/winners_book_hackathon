import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Function? iconPressed;
  final TextInputType? textInputType; // New parameter for input type

  CustomTextField({
    required this.hintText,
    this.icon,
    this.iconPressed,
    this.textInputType, // Initialize the new parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: GoogleFonts.readexPro(
            textStyle: TextStyle(
              color: Colors.green,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          suffixIcon: icon != null
              ? IconButton(
                  icon: Icon(icon, color: Colors.green),
                  onPressed: () => iconPressed?.call(),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
          ),
        ),
        textAlign: TextAlign.right,
        keyboardType: textInputType, // Set the input type
      ),
    );
  }
}
