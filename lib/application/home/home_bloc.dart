import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new_and_hot/models/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewAndHotService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<LoadHomeData>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final _resultMovie = await _homeService.getHotAndNewMovieData();
      final _resultTv = await _homeService.getHotAndNewTvData();
      emit(
        _resultMovie.fold(
            (MainFailure f) => const HomeState(
                pastYearsList: [],
                trendingList: [],
                tvShowList: [],
                tenseDramasList: [],
                southIndianList: [],
                isLoading: false,
                isError: true), (NewAndHotResp resp) {
         

          return HomeState(
              pastYearsList: resp.results,
              trendingList:  resp.results,
              tvShowList: state.tvShowList,
              tenseDramasList: resp.results,
              southIndianList:  resp.results,
              isLoading: false,
              isError: false);
        }),
      );

      emit(_resultTv.fold(
          (MainFailure f) => const HomeState(
              pastYearsList: [],
              trendingList: [],
              tvShowList: [],
              tenseDramasList: [],
              southIndianList: [],
              isLoading: false,
              isError: true),
          (NewAndHotResp resp) => HomeState(
              pastYearsList: state.pastYearsList,
              trendingList: state.trendingList,
              tvShowList: resp.results,
              tenseDramasList: state.tenseDramasList,
              southIndianList: state.southIndianList,
              isLoading: false,
              isError: false)));
    });
  }
}
