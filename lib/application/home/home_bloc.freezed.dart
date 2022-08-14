// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  LoadHomeData loadHomeData() {
    return const LoadHomeData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeData value) loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $LoadHomeDataCopyWith<$Res> {
  factory $LoadHomeDataCopyWith(
          LoadHomeData value, $Res Function(LoadHomeData) then) =
      _$LoadHomeDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadHomeDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadHomeDataCopyWith<$Res> {
  _$LoadHomeDataCopyWithImpl(
      LoadHomeData _value, $Res Function(LoadHomeData) _then)
      : super(_value, (v) => _then(v as LoadHomeData));

  @override
  LoadHomeData get _value => super._value as LoadHomeData;
}

/// @nodoc

class _$LoadHomeData implements LoadHomeData {
  const _$LoadHomeData();

  @override
  String toString() {
    return 'HomeEvent.loadHomeData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadHomeData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHomeData,
  }) {
    return loadHomeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadHomeData,
  }) {
    return loadHomeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHomeData,
    required TResult orElse(),
  }) {
    if (loadHomeData != null) {
      return loadHomeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeData value) loadHomeData,
  }) {
    return loadHomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
  }) {
    return loadHomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
    required TResult orElse(),
  }) {
    if (loadHomeData != null) {
      return loadHomeData(this);
    }
    return orElse();
  }
}

abstract class LoadHomeData implements HomeEvent {
  const factory LoadHomeData() = _$LoadHomeData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required List<NewAndHotData> pastYearsList,
      required List<NewAndHotData> trendingList,
      required List<NewAndHotData> tvShowList,
      required List<NewAndHotData> tenseDramasList,
      required List<NewAndHotData> southIndianList,
      required bool isLoading,
      required bool isError}) {
    return _HomeState(
      pastYearsList: pastYearsList,
      trendingList: trendingList,
      tvShowList: tvShowList,
      tenseDramasList: tenseDramasList,
      southIndianList: southIndianList,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<NewAndHotData> get pastYearsList => throw _privateConstructorUsedError;
  List<NewAndHotData> get trendingList => throw _privateConstructorUsedError;
  List<NewAndHotData> get tvShowList => throw _privateConstructorUsedError;
  List<NewAndHotData> get tenseDramasList => throw _privateConstructorUsedError;
  List<NewAndHotData> get southIndianList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<NewAndHotData> pastYearsList,
      List<NewAndHotData> trendingList,
      List<NewAndHotData> tvShowList,
      List<NewAndHotData> tenseDramasList,
      List<NewAndHotData> southIndianList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? pastYearsList = freezed,
    Object? trendingList = freezed,
    Object? tvShowList = freezed,
    Object? tenseDramasList = freezed,
    Object? southIndianList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      pastYearsList: pastYearsList == freezed
          ? _value.pastYearsList
          : pastYearsList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trendingList: trendingList == freezed
          ? _value.trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tvShowList: tvShowList == freezed
          ? _value.tvShowList
          : tvShowList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tenseDramasList: tenseDramasList == freezed
          ? _value.tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      southIndianList: southIndianList == freezed
          ? _value.southIndianList
          : southIndianList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<NewAndHotData> pastYearsList,
      List<NewAndHotData> trendingList,
      List<NewAndHotData> tvShowList,
      List<NewAndHotData> tenseDramasList,
      List<NewAndHotData> southIndianList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? pastYearsList = freezed,
    Object? trendingList = freezed,
    Object? tvShowList = freezed,
    Object? tenseDramasList = freezed,
    Object? southIndianList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_HomeState(
      pastYearsList: pastYearsList == freezed
          ? _value.pastYearsList
          : pastYearsList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trendingList: trendingList == freezed
          ? _value.trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tvShowList: tvShowList == freezed
          ? _value.tvShowList
          : tvShowList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tenseDramasList: tenseDramasList == freezed
          ? _value.tenseDramasList
          : tenseDramasList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      southIndianList: southIndianList == freezed
          ? _value.southIndianList
          : southIndianList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.pastYearsList,
      required this.trendingList,
      required this.tvShowList,
      required this.tenseDramasList,
      required this.southIndianList,
      required this.isLoading,
      required this.isError});

  @override
  final List<NewAndHotData> pastYearsList;
  @override
  final List<NewAndHotData> trendingList;
  @override
  final List<NewAndHotData> tvShowList;
  @override
  final List<NewAndHotData> tenseDramasList;
  @override
  final List<NewAndHotData> southIndianList;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(pastYearsList: $pastYearsList, trendingList: $trendingList, tvShowList: $tvShowList, tenseDramasList: $tenseDramasList, southIndianList: $southIndianList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.pastYearsList, pastYearsList) &&
            const DeepCollectionEquality()
                .equals(other.trendingList, trendingList) &&
            const DeepCollectionEquality()
                .equals(other.tvShowList, tvShowList) &&
            const DeepCollectionEquality()
                .equals(other.tenseDramasList, tenseDramasList) &&
            const DeepCollectionEquality()
                .equals(other.southIndianList, southIndianList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pastYearsList),
      const DeepCollectionEquality().hash(trendingList),
      const DeepCollectionEquality().hash(tvShowList),
      const DeepCollectionEquality().hash(tenseDramasList),
      const DeepCollectionEquality().hash(southIndianList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required List<NewAndHotData> pastYearsList,
      required List<NewAndHotData> trendingList,
      required List<NewAndHotData> tvShowList,
      required List<NewAndHotData> tenseDramasList,
      required List<NewAndHotData> southIndianList,
      required bool isLoading,
      required bool isError}) = _$_HomeState;

  @override
  List<NewAndHotData> get pastYearsList;
  @override
  List<NewAndHotData> get trendingList;
  @override
  List<NewAndHotData> get tvShowList;
  @override
  List<NewAndHotData> get tenseDramasList;
  @override
  List<NewAndHotData> get southIndianList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
