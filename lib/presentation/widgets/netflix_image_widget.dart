import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class NetflixImageWidget extends StatelessWidget {
  final double width;
  final double height;
  const NetflixImageWidget({
    Key? key,
    this.height = 60,
    this.width = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      tempNetflixImage,
      width: width,
      height: height,
    );
  }
}
