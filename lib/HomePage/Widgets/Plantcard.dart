import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatelessWidget {
  final String plantName;
  final String plantDescription;
  final ImageProvider plantImage;

  const PlantCard({
    Key? key,
    required this.plantName,
    required this.plantDescription,
    required this.plantImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Color(0xFFD2DFD3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plantName,
                    style: GoogleFonts.readexPro(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    plantDescription,
                    style: GoogleFonts.readexPro(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Image(
            image: plantImage,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          
        ],
      ),
    );
  }
}
