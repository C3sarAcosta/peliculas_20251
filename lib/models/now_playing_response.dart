import 'dart:convert';

import 'package:peliculas_20251/models/movie.dart';

class NowPlayingResponse {
  Dates dates;
  int page;
  List<Movie> results;
  int totalPages;
  int totalResult;

  NowPlayingResponse(
      {required this.dates,
      required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResult});

  factory NowPlayingResponse.fromRawJson(String str) =>
      NowPlayingResponse.fromJson(json.decode(str));

  factory NowPlayingResponse.fromJson(Map<String, dynamic> json) =>
      NowPlayingResponse(
        dates: Dates.fromJson(json['dates']),
        page: json['page'],
        results:
            List<Movie>.from(json['results'].map((x) => Movie.fromJson(x))),
        totalPages: json['total_pages'],
        totalResult: json['total_results'],
      );
}

class Dates {
  DateTime maximum;
  DateTime minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });

  factory Dates.fromRawJson(String str) => Dates.fromJson(json.decode(str));

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json['maximum']),
        minimum: DateTime.parse(json['minimum']),
      );
}
