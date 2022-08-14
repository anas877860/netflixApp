import 'package:json_annotation/json_annotation.dart';

part 'new_and_hot_resp.g.dart';

@JsonSerializable()
class NewAndHotResp {
  @JsonKey(name: 'results')
  List<NewAndHotData> results;

  NewAndHotResp({this.results = const []});

  factory NewAndHotResp.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotRespToJson(this);
}

@JsonSerializable()
class NewAndHotData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: ' title')
  String? title;
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'original_name')
  String? originalName;

  NewAndHotData({
    this.backdropPath,
    this.id,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.originalTitle,
    this.originalName,
  });

  factory NewAndHotData.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotDataToJson(this);
}
