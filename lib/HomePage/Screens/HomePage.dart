import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winners_book_hackathon/CommonWidgets/CustomTextField.dart';
import 'package:winners_book_hackathon/HomePage/Widgets/Plantcard.dart';
import 'package:winners_book_hackathon/HomePage/Widgets/ProgressBar.dart';
import 'package:winners_book_hackathon/HomePage/Widgets/WaterDrop.dart';

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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
                MainAxisAlignment.center, // Align text to the right
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'نبتتك:',
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'رطوبة التربة',
                  style: GoogleFonts.readexPro(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomProgressBar(
                percentage: 80,
                barWidth: MediaQuery.of(context).size.width * 0.9,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'درجة الحرارة',
                  style: GoogleFonts.readexPro(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomProgressBar(
                percentage: 40,
                barWidth: MediaQuery.of(context).size.width * 0.9,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(child: WaterDropButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        clipBehavior: Clip.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'بوثوس',
                                style: GoogleFonts.readexPro(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textDirection: TextDirection.rtl,
                                textWidthBasis: TextWidthBasis.longestLine,
                                textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: true,
                                  applyHeightToLastDescent: true,
                                ),
                              ),
                              Image.asset(
                                'assets/Plants/Plant-1.png',
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                "اسم الكتاب",
                                style: GoogleFonts.readexPro(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              CustomTextField(hintText: "العادات الذرية"),
                              Text(
                                "رقم الصفحة",
                                style: GoogleFonts.readexPro(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              CustomTextField(
                                hintText: "203",
                                textInputType: TextInputType.number,
                              ),
                              Text(
                                " الاقتباس",
                                style: GoogleFonts.readexPro(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              CustomTextField(
                                hintText:
                                    "إن ما نفعله باستمرار يشكّل ما نصبح عليه",
                              ),
                              WaterDropButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        clipBehavior: Clip.none,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Image.asset(
                                          'assets/Images/watering.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                        ),
                                      );
                                    },
                                  );
                                  Future.delayed(Duration(seconds: 3), () {
                                    Navigator.of(context).pop();
                                  }).then(
                                      (value) => Navigator.of(context).pop());
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
