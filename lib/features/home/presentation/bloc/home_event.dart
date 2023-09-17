import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}
class GetMoviesEvent extends HomeEvent {
  const GetMoviesEvent();

  @override
  List<Object?> get props => [];
}
class GetMovieEvent extends HomeEvent {
  final String id;
  const GetMovieEvent(this.id);

  @override
  List<Object?> get props => [];
}

class SearchEvent extends HomeEvent {
  final String value;
  const SearchEvent(this.value);

  @override
  List<Object?> get props => [];
}