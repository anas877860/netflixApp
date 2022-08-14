import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
  static const newHotMovies="$kBaseUrl/discover/movie?api_key=$apiKey";
  static const newHotTv= "$kBaseUrl/discover/tv?api_key=$apiKey";
}
