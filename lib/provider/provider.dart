import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gocafein_test/model/models.dart';

class MovieListNotifier extends StateNotifier<AsyncValue<List<MovieModel>?>> {
  MovieListNotifier() : super(const AsyncValue.data(null));

  Future<void> fetchMovies(String keyword, int page) async {
    final currentState = state;
    final currentMovies = currentState.value ?? [];

    if (page == 1) {
      state = const AsyncValue.loading();
    } else {
      state = AsyncValue.data(currentMovies);
    }

    final url = 'https://www.omdbapi.com/?apikey=${dotenv.get('OMDb_key')}&s=$keyword&page=$page&type=movie';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final movieResponse = MovieResponse.fromJson(data);

        final updatedMovies = List<MovieModel>.from(currentMovies)
          ..addAll(movieResponse.Search);

        print('updatedMovies ${updatedMovies.length}');

        state = AsyncValue.data(updatedMovies);
      } else {
        state = AsyncValue.error('Failed to load movies', StackTrace.current);
      }
    } catch (error) {
      state = AsyncValue.error('An error occurred: $error', StackTrace.current);
    }
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
    print(url);

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final movieDetail = MovieModel.fromJson(data);
        print(movieDetail);
        state = AsyncValue.data(movieDetail);
      } else {
        state = AsyncValue.error('Failed to load movie detail', StackTrace.current);
      }
    } catch (error) {
      state = AsyncValue.error('An error occurred: $error', StackTrace.current);
    }
  }
}

final movieDetailProvider = StateNotifierProvider<MovieDetailNotifier, AsyncValue<MovieModel?>>((ref) {
  return MovieDetailNotifier();
});

@immutable
class MovieState {
  final List<MovieModel>? movies;
  final MovieModel? selectedMovie;
  final bool isLoading;
  final String? errorMessage;

  MovieState({
    this.movies,
    this.selectedMovie,
    this.isLoading = false,
    this.errorMessage,
  });

  MovieState copyWith({
    List<MovieModel>? movies,
    MovieModel? selectedMovie,
    bool? isLoading,
    String? errorMessage,
  }) {
    return MovieState(
      movies: movies ?? this.movies,
      selectedMovie: selectedMovie ?? this.selectedMovie,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
