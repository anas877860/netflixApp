import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

class MainNumberCard extends StatelessWidget {
  final String imageUrl;
  final int index;
  const MainNumberCard({Key? key, required this.index, required this.imageUrl, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 250,
              ),
              Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                       imageUrl),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 28,
            bottom: -20,
            child: BorderedText(
              strokeWidth: 10,
              strokeColor: kWhiteColor,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                  fontSize: 120,
                  decoration: TextDecoration.none,
                  decorationColor: kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
