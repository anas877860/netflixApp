import 'package:flutter/material.dart';

import 'package:netflix_app/presentation/home/widgets/main_card.dart';


import 'package:netflix_app/presentation/widgets/title.dart';

class MainCardTitle extends StatelessWidget {
  final List<String>posterList;
  final String title;
  const MainCardTitle({Key? key, required this.title, required this.posterList,  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle(title: title),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
            posterList.length,
              (index){
               
                 
                return  MainCard(imageUrl:posterList[index],);
              }
             
             
              
            ),
          ),
        ),
      ],
    );
  }
}
