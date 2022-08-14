part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<NewAndHotData> pastYearsList,
    required List<NewAndHotData> trendingList,
    required List<NewAndHotData> tvShowList,
    required List<NewAndHotData> tenseDramasList,
    required List<NewAndHotData> southIndianList,
    required bool isLoading,
    required bool isError,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
        pastYearsList: [],
        trendingList: [],
        tvShowList: [],
        tenseDramasList: [],
        southIndianList: [],
        isLoading: false,
        isError: false,
      );
}
