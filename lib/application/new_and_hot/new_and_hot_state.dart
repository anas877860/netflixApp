part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewAndHotData> comingSoonList,
    required List<NewAndHotData> everyOneIsWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _NewAndHotState;

  factory NewAndHotState.initial() => const NewAndHotState(
      comingSoonList: [],
      everyOneIsWatchingList: [],
      isLoading: false,
      isError: false);
}
