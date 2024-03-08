import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double percentage;
  final double barWidth;

  CustomProgressBar(
      {Key? key, required this.percentage, required this.barWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: barWidth,
          height: 30, // Updated height to 30
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: (percentage / 100) * barWidth,
            height: 30, // Updated height to 30
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '$percentage%',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
