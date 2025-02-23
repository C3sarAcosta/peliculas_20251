import 'dart:convert';

import 'package:peliculas_20251/models/now_playing_response.dart';

import 'movie.dart';

class PopularResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  PopularResponse(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});

  factory PopularResponse.fromRawJson(String str) =>
      PopularResponse.fromJson(json.decode(str));

  factory PopularResponse.fromJson(Map<String, dynamic> json) =>
      PopularResponse(
          page: json['page'],
          results:
              List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
          totalPages: json["total_pages"],
          totalResults: json['total_results']);
}
