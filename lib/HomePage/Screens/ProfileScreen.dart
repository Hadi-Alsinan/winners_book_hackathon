import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winners_book_hackathon/CommonWidgets/CustomTextField.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrapping Scaffold with Directionality for RTL layout
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              'assets/Logo/Logo.png',
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.065),
              child: Text(
                "اسم المستخدم",
                style: GoogleFonts.readexPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            CustomTextField(
              hintText: "هادي",
              textInputType: TextInputType.text,
              icon: Icons.edit,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
             Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.065),
              child: Text(
                "الايميل",
                style: GoogleFonts.readexPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            CustomTextField(
              hintText: "example@example.com",
              textInputType: TextInputType.visiblePassword,
              icon: Icons.edit,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.065),
              child: Text(
                " رقم الجوال",
                style: GoogleFonts.readexPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            CustomTextField(
              hintText: "+966555555555",
              textInputType: TextInputType.visiblePassword,
              icon: Icons.edit,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.065),
              child: Text(
                "عدد النبتات",
                style: GoogleFonts.readexPro(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            CustomTextField(
              hintText: "1",
            ),
          ],
        ),
      ),
    );
  }
}
