import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';

import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';

import 'package:netflix_app/presentation/home/widgets/main_card_title.dart';

import 'package:netflix_app/presentation/home/widgets/main_number_title_card.dart';
import 'package:netflix_app/presentation/widgets/netflix_image_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(const LoadHomeData());
    });
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          if (direction == ScrollDirection.reverse) {
            scrollNotifier.value = false;
          } else if (direction == ScrollDirection.forward) {
            scrollNotifier.value = true;
          }
          return true;
        },
        child: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.isError) {
                  return const Center(child: Text("Error while loading Home"));
                } else if (state.pastYearsList.isEmpty) {
                  return const Center(child: Text("Home list is Empty"));
                }
                final _releasePastYear = state.pastYearsList.map((m) {
                  return '$imageAppendUrl${m.posterPath}';
                }).toList();

                final _trendingList = state.trendingList.map((m) {
                  return '$imageAppendUrl${m.posterPath}';
                }).toList();
                final _tenseDramasList = state.tenseDramasList.map((m) {
                  return '$imageAppendUrl${m.posterPath}';
                }).toList();
                final _southIndianList = state.southIndianList.map((m) {
                  return '$imageAppendUrl${m.posterPath}';
                }).toList();
              final _tvShowList =  state.tvShowList.map((m) {
                  return '$imageAppendUrl${m.posterPath}';
                }).toList();
                _releasePastYear.shuffle();
                _trendingList.shuffle();
                _tenseDramasList.shuffle();
                _southIndianList.shuffle();

                return ListView(
                  children: [
                    const BackGrounCard(),
                    MainCardTitle(
                      title: 'Released in the past year',
                      posterList: _releasePastYear.sublist(0, 10),
                    ),
                    MainCardTitle(
                      title: 'Trending Now',
                      posterList: _trendingList.sublist(0, 10),
                    ),
                     MainNumberTitleCard(
                        title: "Top 10 TV Shows in India Today", posterList: _tvShowList.sublist(0,10),),
                    MainCardTitle(
                      title: "Tense Dramas",
                      posterList: _tenseDramasList.sublist(0, 10),
                    ),
                    MainCardTitle(
                      title: "South Indian Cinema",
                      posterList: _southIndianList.sublist(0, 10),
                    )
                  ],
                );
              },
            ),
            ValueListenableBuilder(
                valueListenable: scrollNotifier,
                builder:
                    (BuildContext ctx, bool scrollNotification, Widget? _) {
                  return scrollNotification
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const NetflixImageWidget(),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kWidth,
                                  Container(
                                    height: 30,
                                    width: 30,
                                    color: Colors.blue,
                                  ),
                                  kWidth,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: kHomeTitleText,
                                  ),
                                  Text(
                                    "Movies",
                                    style: kHomeTitleText,
                                  ),
                                  Text(
                                    "Categories",
                                    style: kHomeTitleText,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : const SizedBox();
                })
          ],
        ),
      ),
    );
  }
}
