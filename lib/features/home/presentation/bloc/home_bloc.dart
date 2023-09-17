
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/network/main_repository.dart';
import 'home_event.dart';
import 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetMoviesEvent>(_getMovies);
    on<GetMovieEvent>(_getMovie);
    on<SearchEvent>(_searchMovie);
  }

  final _homeRepository = HomeRepository();

  Future<void> _getMovies(GetMoviesEvent event,
      Emitter<HomeState> emit) async {
    final result = await _homeRepository.getMovies();

    emit(state.copyWith(
      movies: result,
    ));
  }
  Future<void> _getMovie(GetMovieEvent event,
      Emitter<HomeState> emit) async {
    final result = await _homeRepository.getMovie(event.id);

    emit(state.copyWith(
      movie: result,
    ));
  }

  void _searchMovie(SearchEvent event, Emitter<HomeState> emit) async{
    final result = await _homeRepository.getSearchResults(event.value);

    emit(state.copyWith(filteredMovies: result.docs));
  }
}