import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Function? iconPressed;
  final TextInputType? textInputType; // New parameter for input type
  final bool isDisabled; // New parameter for disabling the text field

  CustomTextField({
    required this.hintText,
    this.icon,
    this.iconPressed,
    this.textInputType, // Initialize the new parameter
    this.isDisabled = false, // Set the default value for isDisabled
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
              color: Colors.grey[400],
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
        enabled: !isDisabled, // Disable the text field if isDisabled is true
      ),
    );
  }
}
