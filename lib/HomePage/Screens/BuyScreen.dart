import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10, // Horizontal space between cards
            mainAxisSpacing: 10, // Vertical space between cards
            childAspectRatio: 0.45,
          ),
          itemBuilder: (context, index) {
            return Card(
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
            );
          },
        ),
      ),
    );
  }
}
