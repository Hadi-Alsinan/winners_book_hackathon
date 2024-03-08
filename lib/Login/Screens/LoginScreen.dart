import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winners_book_hackathon/CommonWidgets/CustomTextField.dart';
import 'package:winners_book_hackathon/HomePage/Screens/HomePage.dart';
import 'package:winners_book_hackathon/Registeration/Screens/RegisterationScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This would be your main screen after the splash screen
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "اسم المستخدم",
                  style: GoogleFonts.readexPro(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                CustomTextField(hintText: "هادي "),
                Text(
                  "كلمة المرور",
                  style: GoogleFonts.readexPro(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                CustomTextField(
                  hintText: " كلمة المرور",
                  textInputType: TextInputType.visiblePassword,
                  icon: Icons.visibility,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => MyHomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 10.0),
                    child: Text(
                      "تسجيل الدخول",
                      style: GoogleFonts.readexPro(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => RegisterationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.green, width: 2.0),
                    ),
                  ),
                  child: Text(
                    "تسجيل حساب جديد",
                    style: GoogleFonts.readexPro(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "نسيت كلمة المرور؟",
                    style: GoogleFonts.readexPro(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
