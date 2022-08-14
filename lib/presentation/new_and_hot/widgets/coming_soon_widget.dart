import 'package:flutter/material.dart';

import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_app/presentation/widgets/icon_text_widget.dart';
import 'package:netflix_app/presentation/widgets/netflix_image_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String movieName;
  final String description;
  final String imageUrl;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.movieName,
    required this.description, required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Column(
              
              children: [
                Text(
                  month,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  day,
                  style: const TextStyle(
                      fontSize: 30,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
               VideoWidget(url: imageUrl,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieName,maxLines: 1,overflow:TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        // letterSpacing: -12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 
                  const IconTextWidget(
                    pHorizontal: 0,
                    icon: Icons.add_alert_outlined,
                    title: "Remind Me",
                    fontSize: 14,
                    iconSize: 20,
                  ),
                  const IconTextWidget(
                    pHorizontal: 15,
                    icon: Icons.info_outline,
                    title: "Info",
                    fontSize: 14,
                    iconSize: 20,
                  ),
                ],
              ),
              const Text(
                "Coming on Friday",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  NetflixImageWidget(
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    "FILM",
                    style: TextStyle(fontSize: 12, letterSpacing: 1),
                  ),
                ],
              ),
              Text(
                movieName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(description,maxLines: 5,overflow: TextOverflow.ellipsis,)
            ],
          ),
        ),
      ],
    );
  }
}
