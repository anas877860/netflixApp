// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHotResp _$NewAndHotRespFromJson(Map<String, dynamic> json) =>
    NewAndHotResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => NewAndHotData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewAndHotRespToJson(NewAndHotResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

NewAndHotData _$NewAndHotDataFromJson(Map<String, dynamic> json) =>
    NewAndHotData(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json[' title'] as String?,
      originalTitle: json['original_title'] as String?,
      originalName: json['original_name'] as String?,
    );

Map<String, dynamic> _$NewAndHotDataToJson(NewAndHotData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      ' title': instance.title,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
    };
