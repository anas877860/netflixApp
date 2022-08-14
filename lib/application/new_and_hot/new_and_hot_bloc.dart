import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new_and_hot/models/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {
      if(state.comingSoonList.isNotEmpty){
        emit(state);
        return;
      }
      emit(state.copyWith(isLoading: true, isError: false));
      final _result = await _newAndHotService.getHotAndNewMovieData();
      emit(_result.fold(
          (MainFailure f) => const NewAndHotState(
              comingSoonList: [],
              everyOneIsWatchingList: [],
              isLoading: false,
              isError: true),
          (NewAndHotResp resp) => NewAndHotState(
              comingSoonList: resp.results,
              everyOneIsWatchingList: state.everyOneIsWatchingList,
              isLoading: false,
              isError: false)));
    });

    on<LoadDataInEveryOneIsWatching>((event, emit) async {
      if(state.everyOneIsWatchingList.isNotEmpty){
        emit(state);
        return;
      }
      emit(state.copyWith(isLoading: true,isError:false));
      final _result = await _newAndHotService.getHotAndNewTvData();
      emit(_result.fold(
          (MainFailure f) => const NewAndHotState(
              comingSoonList: [],
              everyOneIsWatchingList: [],
              isLoading: false,
              isError: true),
          (NewAndHotResp resp) => NewAndHotState(
              comingSoonList: state.comingSoonList,
              everyOneIsWatchingList: resp.results,
              isLoading: false,
              isError: false)));
    });
  }
}
