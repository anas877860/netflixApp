import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

import 'package:netflix_app/presentation/widgets/volume_mute_widget.dart';

class VideoWidget extends StatelessWidget {
  final String url;
  const VideoWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          url,
          fit: BoxFit.cover,
          height: 200,
          width: double.infinity,
          loadingBuilder:
              (BuildContext _, Widget child, ImageChunkEvent? process) {
            if (process == null) {
              return child;
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 2,
              ));
            }
          },
          errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
            return const Center(
              child: Icon(
                Icons.wifi,
                color: kWhiteColor,
              ),
            );
          },
        ),
        const Positioned(
          bottom: 10,
          right: 10,
          child: VolumeMuteIconWidget(
            radius: 20,
            size: 20,
          ),
        ),
      ],
    );
  }
}
