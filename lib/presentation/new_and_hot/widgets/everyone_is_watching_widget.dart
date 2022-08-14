import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_app/presentation/widgets/icon_text_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String id;
  final String movieName;
  final String description;
  final String url;
  const EveryonesWatchingWidget({
    Key? key, required this.movieName, required this.description, required this.url, required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
         movieName,maxLines: 1,overflow: TextOverflow.clip,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Text(
           description,maxLines: 4,overflow: TextOverflow.ellipsis,),
        kHeight50,
         VideoWidget(url:url,),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IconTextWidget(icon: Icons.share, title: "Share"),
            IconTextWidget(icon: Icons.add, title: "Add"),
            IconTextWidget(icon: Icons.play_arrow, title: "Play")
          ],
        ),
      ],
    );
  }
}
