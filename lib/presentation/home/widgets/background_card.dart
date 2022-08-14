import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

import 'package:netflix_app/presentation/home/widgets/home_play_button.dart';
import 'package:netflix_app/presentation/widgets/icon_text_widget.dart';

class BackGrounCard extends StatelessWidget {
  const BackGrounCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconTextWidget(
                icon: Icons.add,
                title: 'My List',
                fontSize: 17,
                iconSize: 30,
                fontWeight: FontWeight.bold,
              ),
              HomePlayButton(),
              IconTextWidget(
                icon: Icons.info,
                title: "Info",
                fontSize: 17,
                iconSize: 30,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ],
    );
  }
}
