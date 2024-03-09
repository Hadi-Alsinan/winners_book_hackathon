import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winners_book_hackathon/CommonWidgets/CustomTextField.dart';

class BuyView extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'bookname': 'أسرار النجاح',
      'postername': 'أحمد خالد',
      'bookcondition': 'جديد',
      'booktype': 'تنمية بشرية',
      'bookprice': '50 ريال',
      'bookpicpath': 'assets/Books/5-am-club.jpg', // Path to image asset
    },
    {
      'bookname': 'رحلة الدم',
      'postername': 'إبراهيم عيسى',
      'bookcondition': 'مستعمل',
      'booktype': 'تاريخي',
      'bookprice': '30 ريال',
      'bookpicpath': 'assets/Books/Atomic-Habits.png', // Path to image asset
    },
    {
      'bookname': 'قوة العادات',
      'postername': 'دوهيج',
      'bookcondition': 'جديد',
      'booktype': 'علم نفس',
      'bookprice': '45 ريال',
      'bookpicpath':
          'assets/Books/surrounded-by-idiots.jpg', // Path to image asset
    },
    {
      'bookname': 'فن اللامبالاة',
      'postername': 'مارك مانسون',
      'bookcondition': 'مستعمل',
      'booktype': 'فلسفة',
      'bookprice': '40 ريال',
      'bookpicpath':
          'assets/Books/How-To-Talk-To-Anyone.jpg', // Path to image asset
    },
    // ... You can add more books in similar fashion
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10, // Horizontal space between cards
                mainAxisSpacing: 10, // Vertical space between cards
                childAspectRatio: 0.45,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "شراء كتاب",
                                style: GoogleFonts.readexPro(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "رقم التواصل ",
                                  style: GoogleFonts.readexPro(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green,
                                  ),
                                ),
                                CustomTextField(
                                  hintText: "+966555555555",
                                  isDisabled: true,
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "إلغاء",
                                  style: GoogleFonts.readexPro(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "شراء",
                                  style: GoogleFonts.readexPro(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          items[index]
                              ['bookpicpath']!, // Replace with actual image URL
                          fit: BoxFit.cover, // Fixed height for each image
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                items[index]['postername'],
                                style: GoogleFonts.readexPro(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        items[index]['bookname'],
                                        style: GoogleFonts.readexPro(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons
                                            .info_outline, // Replace with the desired icon
                                        size: 14,
                                        color: Colors
                                            .green, // Replace with the desired color
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        items[index]['bookprice'],
                                        style: GoogleFonts.readexPro(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons
                                            .price_check_outlined, // Replace with the desired icon
                                        size: 14,
                                        color: Colors
                                            .green, // Replace with the desired color
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        items[index]['bookcondition'],
                                        style: GoogleFonts.readexPro(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons
                                            .my_library_books_outlined, // Replace with the desired icon
                                        size: 14,
                                        color: Colors
                                            .green, // Replace with the desired color
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        items[index]['booktype'],
                                        style: GoogleFonts.readexPro(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      const Icon(
                                        Icons
                                            .book_outlined, // Replace with the desired icon
                                        size: 14,
                                        color: Colors
                                            .green, // Replace with the desired color
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    primary: Colors.green, // Button color
                    onPrimary: Colors.white, // Text color
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'بيع كتاب',
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Text(
                                    " اسم الكتاب",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  CustomTextField(hintText: "العادات الذرية"),
                                  Text(
                                    "نوع الكتاب",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  CustomTextField(hintText: "رواية"),
                                  Text(
                                    "حالة الاستعمال",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  CustomTextField(
                                    hintText: "جديد",
                                    textInputType: TextInputType.number,
                                  ),
                                  Text(
                                    " السعر",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  CustomTextField(
                                    hintText: "45",
                                  ),
                                  Text(
                                    "صورة الكتاب ",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  CustomTextField(
                                    hintText: "",
                                    icon: Icons.camera_enhance,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }, // Use the passed onPressed function
                  child: const Icon(Icons.add) // Icon inside button
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
