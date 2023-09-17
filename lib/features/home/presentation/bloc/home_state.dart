

import 'package:equatable/equatable.dart';

import '../../data/models/get_movie_response.dart';
import '../../data/models/get_movies_response.dart';
import '../../data/models/get_search_results_response.dart';

class HomeState extends Equatable {
  final GetMoviesResponse? movies;
  final GetMovieResponse? movie;
  final List<MovieDocs>? filteredMovies;

  const HomeState({this.movies,this.movie,this.filteredMovies});

  HomeState copyWith({
    GetMoviesResponse? movies,
    GetMovieResponse? movie,
    List<MovieDocs>? filteredMovies
  }) {
    return HomeState(
      movies: movies ?? this.movies,
      movie: movie ?? this.movie,
      filteredMovies: filteredMovies ?? this.filteredMovies
    );
  }

  @override
  List<Object?> get props => [movies,movie,filteredMovies];
}
