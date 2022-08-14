import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class HomePlayButton extends StatelessWidget {
  const HomePlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhiteColor)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: kBlackColor,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            "Play",
            style: TextStyle(
              color: kBlackColor,
            ),
          ),
        ));
  }
}
