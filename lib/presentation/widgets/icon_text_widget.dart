import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  final double pVertical;
  final double pHorizontal;

  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.fontSize = 14,
    this.iconSize = 30,
    this.fontWeight = FontWeight.normal,
    this.pHorizontal = 10,
    this.pVertical = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: pVertical, horizontal: pHorizontal),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: iconSize,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: kWhiteColor, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ],
      ),
    );
  }
}
