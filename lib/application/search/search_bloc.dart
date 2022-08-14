import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:netflix_app/domain/search/models/search_resp/search_resp.dart';
import 'package:netflix_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }

      emit(
        const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false),
      );
      final _result = await _downloadsService.getDownloadsImages();
      emit(_result.fold(
          (MainFailure f) => (const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true)),
          (List<Downloads> list) => (SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false))));
    });

    on<SearchMovie>((event, emit) async {
      log('searching is ${event.movieQuery}');
      emit(
        const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false),
      );
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      emit(_result.fold(
          (MainFailure f) => const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true),
          (SearchResp r) => SearchState(
              searchResultList: r.results,
              idleList: [],
              isLoading: false,
              isError: false)));
    });
  }
}
