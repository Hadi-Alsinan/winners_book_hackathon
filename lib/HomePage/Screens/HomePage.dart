import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winners_book_hackathon/HomePage/Widgets/Plantcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/Logo/Logo-2.png',
                ),
                Text(
                  'أهلاً, هادي',
                  style: GoogleFonts.readexPro(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the right
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'نبتك:',
                  style: GoogleFonts.readexPro(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const PlantCard(
                plantName: 'بوثوس',
                plantDescription:
                    'نبات البوتس ويسمى في اغلب المشاتل بنبات المداد الداخلي، من نباتات الزينة الداخلية التي تنجح زراعتها بدرجات حرارة تتجاوز 30 درجة مئوية. موطنه الأصلي جزر سليمان.',
                plantImage: AssetImage('assets/Plants/Plant-1.png'),
              ),
              // Add more widgets or plant cards as needed
            ],
          ),
        ),
      ),
    );
  }
}
