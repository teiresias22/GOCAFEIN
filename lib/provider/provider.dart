import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:gocafein_test/model/models.dart';

class MovieListNotifier extends StateNotifier<AsyncValue<List<MovieModel>>> {
  MovieListNotifier() : super(const AsyncValue.data([]));

  Future<void> fetchMovies(String keyword, int page) async {
    final url = 'https://www.omdbapi.com/?apikey=${dotenv.get('OMDb_key')}&s=$keyword&page=$page&type=movie';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _handleSuccess(response.body, page);
      } else {
        _handleError('Failed to load movies');
      }
    } catch (error) {
      _handleError('An error occurred: $error');
    }
  }

  void _handleSuccess(String responseBody, int page) {
    final data = json.decode(responseBody);
    final movieResponse = MovieResponse.fromJson(data);

    if (page == 1) {
      state = AsyncValue.data(movieResponse.Search);
    } else {
      final currentMovies = state.value ?? [];
      final updatedMovies = List<MovieModel>.from(currentMovies)
        ..addAll(movieResponse.Search);
      state = AsyncValue.data(updatedMovies);
    }
  }

  void _handleError(String message) {
    state = AsyncValue.error(message, StackTrace.current);
  }
}
final movieProvider = StateNotifierProvider<MovieListNotifier, AsyncValue<List<MovieModel>?>>((ref) {
  return MovieListNotifier();
});

class MovieDetailNotifier extends StateNotifier<AsyncValue<MovieModel?>> {
  MovieDetailNotifier() : super(const AsyncValue.data(null));

  Future<void> fetchMovieDetail(String imdbID) async {
    state = const AsyncValue.loading();
    final url = 'https://www.omdbapi.com/?apikey=${dotenv.get('OMDb_key')}&i=$imdbID';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        _handleSuccess(response.body);
      } else {
        _handleError('Failed to load movie detail');
      }
    } catch (error) {
      _handleError('An error occurred: $error');
    }
  }

  void _handleSuccess(String responseBody) {
    final data = json.decode(responseBody);
    final movieDetail = MovieModel.fromJson(data);
    state = AsyncValue.data(movieDetail);
  }

  void _handleError(String message) {
    state = AsyncValue.error(message, StackTrace.current);
  }
}
final movieDetailProvider = StateNotifierProvider<MovieDetailNotifier, AsyncValue<MovieModel?>>((ref) {
  return MovieDetailNotifier();
});
