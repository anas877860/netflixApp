import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class VolumeMuteIconWidget extends StatelessWidget {
  final double size;
  final double radius;
  const VolumeMuteIconWidget({Key? key, this.radius = 30, this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.5),
      radius: radius,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.volume_off,
          color: kWhiteColor,
          size: size,
        ),
      ),
    );
  }
}
