import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'فيصل العتيبي',
      'bookname': 'العادات الذرية',
      'pagenumber': '1',
      'quote': "النجاح ليس نهاية الطريق بل بداية للمزيد من النجاح",
      'isLiked': false,
    },
    {
      'name': 'إيمان الشهري',
      'bookname': 'الشحرورة الذهبية',
      'pagenumber': '35',
      'quote': "الضحك كان نورًا، والنور كان ضحكًا، وكان هذا سر الكون",
      'isLiked': false,
    },
    {
      'name': 'يوسف أحمد',
      'bookname': 'أمريكانا',
      'pagenumber': '78',
      'quote':
          "إذا لم تفهم، اسأل. وإذا كنت تشعر بالضيق من الأسئلة، فقل أنك كذلك ثم اسأل على أي حال",
      'isLiked': false,
    },
    {
      'name': 'سارة عبدالله',
      'bookname': 'كبرياء وتحامل',
      'pagenumber': '5',
      'quote':
          "يُعترف عالميًا بأن الرجل الأعزب المالك لثروة طيبة، لابد أن يكون بحاجة لزوجة",
      'isLiked': false,
    },
    {
      'name': 'محمد البقمي',
      'bookname': 'الخيميائي',
      'pagenumber': '22',
      'quote': "وعندما تريد شيئًا، يتآمر الكون كله لمساعدتك على تحقيقه",
      'isLiked': false,
    },
    {
      'name': 'أمل العتيبي',
      'bookname': 'الشحرورة الذهبية',
      'pagenumber': '35',
      'quote': "الضحك كان نورًا، والنور كان ضحكًا، وكان هذا سر الكون",
      'isLiked': false,
    },
    {
      'name': 'عبدالله الشهراني',
      'bookname': 'أمريكانا',
      'pagenumber': '78',
      'quote':
          "إذا لم تفهم، اسأل. وإذا كنت تشعر بالضيق من الأسئلة، فقل أنك كذلك ثم اسأل على أي حال",
      'isLiked': false,
    },
    {
      'name': 'نورة العتيبي',
      'bookname': 'كبرياء وتحامل',
      'pagenumber': '5',
      'quote':
          "يُعترف عالميًا بأن الرجل الأعزب المالك لثروة طيبة، لابد أن يكون بحاجة لزوجة",
      'isLiked': false,
    },
    {
      'name': 'عبدالله البقمي',
      'bookname': 'الخيميائي',
      'pagenumber': '22',
      'quote': "وعندما تريد شيئًا، يتآمر الكون كله لمساعدتك على تحقيقه",
      'isLiked': false,
    },
    {
      'name': 'فاطمة العتيبي',
      'bookname': 'الشحرورة الذهبية',
      'pagenumber': '35',
      'quote': "الضحك كان نورًا، والنور كان ضحكًا، وكان هذا سر الكون",
      'isLiked': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  items[index]['name'],
                  style: GoogleFonts.readexPro(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.book_outlined,
                                color: Colors.green,
                              ),
                              Text(
                                items[index]['bookname'],
                                style: GoogleFonts.readexPro(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bookmark_border_outlined,
                                color: Colors.green,
                              ),
                              Text(
                                items[index]['pagenumber'],
                                style: GoogleFonts.readexPro(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Icon(
                        Icons.format_quote,
                        color: Colors.green,
                      ),
                      Text(
                        "''${items[index]['quote']}''",
                        style: GoogleFonts.readexPro(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: items[index]['isLiked'] ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      items[index]['isLiked'] = !items[index]['isLiked'];
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
