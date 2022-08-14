import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyone_is_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text("New & Hot",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              actions: [
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
              bottom: TabBar(
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  isScrollable: true,
                  unselectedLabelColor: kWhiteColor,
                  labelColor: kBlackColor,
                  indicator: BoxDecoration(
                      color: kWhiteColor, borderRadius: kRadius30),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    )
                  ]),
            ),
          ),
          body: const TabBarView(children: [
            ComingSoomList(
              key: Key('coming_soon'),
            ),
            EveryOneIsWatchingList(
              key: Key('everyone_is_watching'),
            ),
          ])),
    );
  }
}

class ComingSoomList extends StatelessWidget {
  const ComingSoomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context).add(const LoadDataInComingSoon());
    });

    return RefreshIndicator(
      onRefresh: ()async{
         BlocProvider.of<NewAndHotBloc>(context).add(const LoadDataInComingSoon());
    
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          } else if (state.isError) {
            return const Center(
                child: Text("Error while loading comingsoon list"));
          } else if (state.comingSoonList.isEmpty) {
            return const Center(child: Text(" comingsoon list is empty"));
          }
          return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              shrinkWrap: true,
              itemCount: state.comingSoonList.length,
              itemBuilder: (BuildContext context, int index) {
                final movie = state.comingSoonList[index];
                log(movie.releaseDate.toString());
                if (movie.id == null) {
                  return const SizedBox();
                }
                String month = '';
                String date = '';
            
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  log(_date.toString());
                  final formatedDate = DateFormat.yMMMMd('en_US').format(_date!);
                  log(formatedDate.toString());
                  month =
                      formatedDate.split(' ').first.substring(0, 3).toUpperCase();
            
                  date = movie.releaseDate!.split('-')[2];
                } catch (_) {
                  month = '';
                  date = '';
                }
            
                return ComingSoonWidget(
                  id: movie.id.toString(),
                  month: month,
                  day: date,
                  movieName: movie.originalTitle ?? 'No title',
                  description: movie.overview ?? 'No description',
                  imageUrl: "$imageAppendUrl${movie.backdropPath}",
                );
              });
        },
      ),
    );
  }
}

class EveryOneIsWatchingList extends StatelessWidget {
  const EveryOneIsWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const LoadDataInEveryOneIsWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        return BlocProvider.of<NewAndHotBloc>(context)
            .add(const LoadDataInEveryOneIsWatching());
      },
      child:
          BlocBuilder<NewAndHotBloc, NewAndHotState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
              child: CircularProgressIndicator(
            strokeWidth: 2,
          ));
        } else if (state.isError) {
          return const Center(
              child: Text("Erro while loading Everyone Watching list"));
        } else if (state.everyOneIsWatchingList.isEmpty) {
          return const Center(child: Text(" Everyone Watching list is Empty"));
        }
        return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: state.everyOneIsWatchingList.length,
            itemBuilder: (BuildContext context, int index) {
              final tv = state.everyOneIsWatchingList[index];
              log(tv.originalName.toString());
              if (tv.id == null) {
                return const SizedBox();
              }

              return EveryonesWatchingWidget(
                description: tv.overview ?? 'No description',
                movieName: tv.originalName ?? 'No title',
                url: "$imageAppendUrl${tv.backdropPath}",
                id: tv.id.toString(),
              );
            });
      }),
    );
  }
}
