import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    required List<MovieModel> Search,
    required String totalResults,
    required String Response,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, Object?> json) => _$MovieResponseFromJson(json);
}

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    String? Title,
    String? Year,
    String? Rated,
    String? Released,
    String? Runtime,
    String? Genre,
    String? Director,
    String? Writer,
    String? Actors,
    String? Plot,
    String? Language,
    String? Country,
    String? Awards,
    String? Poster,
    List<Rating>? Ratings,
    String? Metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? Type,
    String? DVD,
    String? BoxOffice,
    String? Production,
    String? Website,
    String? Response,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) => _$MovieModelFromJson(json);
}

@freezed
class Rating with _$Rating {
  factory Rating({
    required String Source,
    required String Value,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}