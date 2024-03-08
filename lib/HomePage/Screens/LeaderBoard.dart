import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          child: DropdownLeaders(),
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
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
                      const Icon(
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

class DropdownLeaders extends StatefulWidget {
  const DropdownLeaders({super.key});

  @override
  _DropdownLeadersState createState() => _DropdownLeadersState();
}

class _DropdownLeadersState extends State<DropdownLeaders> {
  Map<String, dynamic>? selectedLeader;

  @override
  Widget build(BuildContext context) {
    // Sort items based on the total number of pages read in descending order
    items.sort((a, b) =>
        int.parse(b['pagenumber']).compareTo(int.parse(a['pagenumber'])));

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: DropdownButton<Map<String, dynamic>>(
          dropdownColor: Colors.green, // Set the dropdown color to green
          focusColor: Colors.green,
          value: selectedLeader,
          isExpanded: true,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          hint: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.leaderboard_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Text(
                'المتصدرين',
                style: GoogleFonts.readexPro(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          borderRadius: BorderRadius.circular(20.0),
          style: GoogleFonts.readexPro(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          underline: Container(), // Remove the underline
          onChanged: (Map<String, dynamic>? newValue) {},
          items: items.map<DropdownMenuItem<Map<String, dynamic>>>(
              (Map<String, dynamic> leader) {
            return DropdownMenuItem<Map<String, dynamic>>(
              value: leader,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                      '${leader['name']} - ${leader['pagenumber']} اقتباس')),
            );
          }).toList(),
        ),
      ),
    );
  }
}
